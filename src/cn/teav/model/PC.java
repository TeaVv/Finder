package cn.teav.model;

public class PC {
	private int id;
	private String pc_model;
	private String cpu_model;
	private String cpu_struct;
	private String cpu_core;
	private String memory_capacity;
	private String memory_type;
	private String harddisk_type;
	private String harddisk_capacity;
	private String cd;
	private String display_size;
	private String display_resolution;
	private String display_type;
	private String gpu_model;
	private String gpu_capacity;
	private String camera;
	private String wireless;
	private String bluetooth;
	private String cardreader;
	private String usb;
	private String weight;
	private String dimension;
	private String img1;
	private String img2;
	private String img3;
	private int price;

	public static PC getDefaultPC() {
		PC pc = new PC();
		pc.setPc_model("no more pc");
		pc.setId(0);
		pc.setPrice(0);
		pc.setImg1("img/nullpc.jpg");
		pc.setImg2("img/nullpc.jpg");
		pc.setImg3("img/nullpc.jpg");
		pc.setBluetooth("");
		pc.setCamera("");
		pc.setCardreader("");
		pc.setCd("");
		pc.setCpu_core("");
		pc.setCpu_model("");
		pc.setCpu_struct("");
		pc.setDisplay_resolution("");
		pc.setDisplay_size("");
		pc.setDisplay_type("");
		pc.setGpu_capacity("");
		pc.setGpu_model("");
		pc.setHarddisk_capacity("");
		pc.setHarddisk_type("");
		pc.setMemory_capacity("");
		pc.setMemory_type("");
		pc.setUsb("");
		pc.setWeight("");
		pc.setWireless("");
		pc.setDimension("");
		return pc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPc_model() {
		return pc_model;
	}

	public void setPc_model(String pc_model) {
		this.pc_model = pc_model;
	}

	public String getCpu_model() {
		return cpu_model;
	}

	public void setCpu_model(String cpu_model) {
		this.cpu_model = cpu_model;
	}

	public String getCpu_struct() {
		return cpu_struct;
	}

	public void setCpu_struct(String cpu_struct) {
		this.cpu_struct = cpu_struct;
	}

	public String getCpu_core() {
		return cpu_core;
	}

	public void setCpu_core(String cpu_core) {
		this.cpu_core = cpu_core;
	}

	public String getMemory_capacity() {
		return memory_capacity;
	}

	public void setMemory_capacity(String memory_capacity) {
		this.memory_capacity = memory_capacity;
	}

	public String getMemory_type() {
		return memory_type;
	}

	public void setMemory_type(String moeory_type) {
		this.memory_type = moeory_type;
	}

	public String getHarddisk_type() {
		return harddisk_type;
	}

	public void setHarddisk_type(String harddisk_type) {
		this.harddisk_type = harddisk_type;
	}

	public String getHarddisk_capacity() {
		return harddisk_capacity;
	}

	public void setHarddisk_capacity(String harddisk_capacity) {
		this.harddisk_capacity = harddisk_capacity;
	}

	public String getCd() {
		return cd;
	}

	public void setCd(String cd) {
		this.cd = cd;
	}

	public String getDisplay_size() {
		return display_size;
	}

	public void setDisplay_size(String display_size) {
		this.display_size = display_size;
	}

	public String getDisplay_resolution() {
		return display_resolution;
	}

	public void setDisplay_resolution(String display_resolution) {
		this.display_resolution = display_resolution;
	}

	public String getDisplay_type() {
		return display_type;
	}

	public void setDisplay_type(String display_type) {
		this.display_type = display_type;
	}

	public String getGpu_model() {
		return gpu_model;
	}

	public void setGpu_model(String gpu_model) {
		this.gpu_model = gpu_model;
	}

	public String getGpu_capacity() {
		return gpu_capacity;
	}

	public void setGpu_capacity(String gpu_capacity) {
		this.gpu_capacity = gpu_capacity;
	}

	public String getCamera() {
		return camera;
	}

	public void setCamera(String camera) {
		this.camera = camera;
	}

	public String getWireless() {
		return wireless;
	}

	public void setWireless(String wireless) {
		this.wireless = wireless;
	}

	public String getBluetooth() {
		return bluetooth;
	}

	public void setBluetooth(String bluetooth) {
		this.bluetooth = bluetooth;
	}

	public String getCardreader() {
		return cardreader;
	}

	public void setCardreader(String cardreader) {
		this.cardreader = cardreader;
	}

	public String getUsb() {
		return usb;
	}

	public void setUsb(String usb) {
		this.usb = usb;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getDimension() {
		return dimension;
	}

	public void setDimension(String dimension) {
		this.dimension = dimension;
	}

}
