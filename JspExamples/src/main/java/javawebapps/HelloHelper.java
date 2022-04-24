package javawebapps;

import java.util.Locale;

public class HelloHelper {

    public String getGreeting(Locale locale) {

        // Determine Language to use
        String languageTag = locale.toLanguageTag().substring(0, 2);

        // Determine Greeting language
        return switch (languageTag) {
            case "pt" -> "Bom dia";      // Portuguese
            case "fr" -> "Bonjour";      // French
            case "de" -> "Guten Tag";    // German
            default -> "Hello";          // Anything else
        };

    }

}
