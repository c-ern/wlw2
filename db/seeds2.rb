# ruby encoding: utf-8
BMW Werk 1.1
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter
BMW Werk 2
("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter
BMW Werk 4.1
("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")peter
BMW = Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW").facilities.create(("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")peter)
Audi Werk 1
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")peter
Audi = Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi").facilities.create(("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")peter)
Mercedes Werk Untertürkheim
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter
Mercedes Werk Sindelfingen
("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter
Mercedes Werk Bremen
("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")peter
Mercedes = Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars").facilities.create(("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")peter)
# ruby encoding: utf-8
BMW Werk 1.1
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"}
BMW Werk 2
("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"}{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"}
BMW Werk 4.1
("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"}{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"}{"address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1"}
BMW = Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW").facilities.create([{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"}{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"}{"address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1"})]
Audi Werk 1
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
{"address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1"}
Audi = Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi").facilities.create([{"address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1"})]
Mercedes Werk Untertürkheim
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"}
Mercedes Werk Sindelfingen
("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"}{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"}
Mercedes Werk Bremen
("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"}{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"}{"address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen"}
Mercedes = Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars").facilities.create([{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"}{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"}{"address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen"})]
# ruby encoding: utf-8
BMW Werk 1.1
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter
BMW Werk 2
("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter
BMW Werk 4.1
("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")peter
BMW = Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW").facilities.create(("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")peter)
Audi Werk 1
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")peter
Audi = Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi").facilities.create(("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")peter)
Mercedes Werk Untertürkheim
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter
Mercedes Werk Sindelfingen
("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter
Mercedes Werk Bremen
("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")peter
Mercedes = Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars").facilities.create(("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")peter)
# ruby encoding: utf-8
BMW Werk 1.1
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},
BMW Werk 2
("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"},
BMW Werk 4.1
("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"},{"address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1"},
BMW = Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW").facilities.create([{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"},{"address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1"},)]
Audi Werk 1
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
{"address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1"},
Audi = Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi").facilities.create([{"address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1"},)]
Mercedes Werk Untertürkheim
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},
Mercedes Werk Sindelfingen
("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"},
Mercedes Werk Bremen
("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"},{"address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen"},
Mercedes = Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars").facilities.create([{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"},{"address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen"},)]
# ruby encoding: utf-8
BMW Werk 1.1
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter
BMW Werk 2
("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter
BMW Werk 4.1
("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")peter
BMW = Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW").facilities.create(("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")peter("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")peter("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")peter)
Audi Werk 1
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")peter
Audi = Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi").facilities.create(("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")peter)
Mercedes Werk Untertürkheim
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter
Mercedes Werk Sindelfingen
("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter
Mercedes Werk Bremen
("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")peter
Mercedes = Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars").facilities.create(("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")peter("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")peter("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")peter)
# ruby encoding: utf-8
BMW Werk 1.1
("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"}
BMW Werk 2
("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"}
BMW Werk 4.1
("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"},{"address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1"}
BMW = Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW").facilities.create([{"address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1"},{"address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2"},{"address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1"})]
Audi Werk 1
("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
{"address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1"}
Audi = Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi").facilities.create([{"address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1"})]
Mercedes Werk Untertürkheim
("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"}
Mercedes Werk Sindelfingen
("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"}
Mercedes Werk Bremen
("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")
{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"},{"address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen"}
Mercedes = Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars").facilities.create([{"address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim"},{"address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen"},{"address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen"})]
