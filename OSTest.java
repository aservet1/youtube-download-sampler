public class OSTest {
    public static String getOS() {
        return System.getProperty("os.name");
    }
    public static void main(String[] args) {
      System.out.println(getOS());
    }
}