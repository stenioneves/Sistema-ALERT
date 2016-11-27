package org.alert.conf;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.format.datetime.DateFormatterRegistrar;
import org.springframework.format.support.DefaultFormattingConversionService;
import org.springframework.format.support.FormattingConversionService;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
// Configuração dos serviços do spring
@EnableWebMvc
@ComponentScan(basePackages={"org.alert.controllers","org.alert.daos"})// Atenção com os pacotes.
public class AppWebConfiguration extends WebMvcConfigurerAdapter {
	
	
    
	/**
	 * 	Método para mapear e configurar as views no Spring 
	 * @return resolver
	 */
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver(){
		InternalResourceViewResolver resolver= new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setExposeContextBeansAsAttributes(true);
			return resolver;
		
	}
	
	/**
	 * Metodo que habilita a pasta resources.
	 */
	@Override 
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
	
	@Bean// mensagens
	public MessageSource messageSource(){
		ReloadableResourceBundleMessageSource bundle= new ReloadableResourceBundleMessageSource();
		bundle.setBasename("/WEB-INF/messages");
		bundle.setDefaultEncoding("UTF-8");
		bundle.setCacheSeconds(1);
		return bundle;
				}
	@Bean //formatação da data.
	public FormattingConversionService mvConversionService(){
		
		DefaultFormattingConversionService conversionService = new DefaultFormattingConversionService(true);
		DateFormatterRegistrar registrar= new DateFormatterRegistrar();
		registrar.setFormatter(new DateFormatter("yyy-MM-dd"));
		registrar.registerFormatters(conversionService);
		return conversionService;
	}

}
