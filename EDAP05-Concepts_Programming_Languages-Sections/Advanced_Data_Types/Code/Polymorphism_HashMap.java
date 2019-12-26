/* The definition of Java's HashMap function is shown below (this comes from Java 8's documentation.
 * java.util.HashMap<K,V>
 */

import java.util.HashMap;

public class C {
    private HashMap<String, Integer> strIntHashMap;
    private HashMap<String, Double> strIntHashMap;
    
    public C() {
        // Create a HashMap that uses Strings as its keys and is storing Integers as its values.
        HashMap<String, Integer> strIntHashMap = new HashMap<String, Integer>();
        HashMap<String, Double> strDblHashMap = new HashMap<String, Double>();
    }
}
