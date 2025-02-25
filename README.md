# README

# AtacDdos.sh

## English Version

### Ping Flood Attack

This script performs a ping flood attack by continuously sending ICMP packets to a target IP address using multiple parallel processes.

### Features:
1. Launches multiple processes to send ICMP packets.
2. Customizable packet size and interval between pings.
3. Runs in the background for continuous execution.

### How to Use:

#### On the Attacker Machine:
Run the script using the following format:
```bash
./script.sh <num_processes> <target_IP> <packet_size> <interval>
```
Example:
```bash
./script.sh 10 192.168.1.100 1000 0.5
```
This will send ICMP packets of 1000 bytes to `192.168.1.100` using 10 processes with a 0.5-second interval.

### Notes:
- Script designed for Linux systems.
- Requires root privileges to execute.
- Use only for network testing and ethical purposes.

---

## Versión en Español

### Ataque de Ping Flood

Este script realiza un ataque de ping flood enviando paquetes ICMP de manera continua a una dirección IP de destino usando múltiples procesos en paralelo.

### Características:
1. Inicia múltiples procesos para enviar paquetes ICMP.
2. Tamaño de paquete y tiempo de intervalo personalizables.
3. Se ejecuta en segundo plano para una ejecución continua.

### Cómo usarlo:

#### En la Máquina Atacante:
Ejecuta el script con el siguiente formato:
```bash
./script.sh <num_procesos> <IP_destino> <tamano_paquete> <intervalo>
```
Ejemplo:
```bash
./script.sh 10 192.168.1.100 1000 0.5
```
Esto enviará paquetes ICMP de 1000 bytes a `192.168.1.100` utilizando 10 procesos con un intervalo de 0.5 segundos.

### Notas:
- Script diseñado para sistemas Linux.
- Requiere privilegios de root para ejecutarse.
- Usar solo para pruebas de red y propósitos éticos.


---


# Tallafocs_off.sh

## English Version

### Firewall Reset Script

This script resets the firewall rules using `iptables`, clearing all existing rules and setting default policies to allow all traffic.

### Features:
1. Resets all `iptables` rules to default settings.
2. Clears all custom chains and rules in the `filter`, `nat`, and `mangle` tables.
3. Ensures that all incoming, outgoing, and forwarded traffic is allowed after execution.

### How to Use:
Run the script as root:
```bash
./script.sh
```
After execution, all firewall rules will be reset, and traffic will flow unrestricted.

### Notes:
- Designed for Linux systems.
- Requires root privileges.
- Be cautious when running this script, as it removes all firewall protections.

---

## Versión en Español

### Script de Reinicio de Firewall

Este script restablece las reglas del firewall utilizando `iptables`, eliminando todas las reglas existentes y estableciendo políticas predeterminadas para permitir todo el tráfico.

### Características:
1. Restablece todas las reglas de `iptables` a su configuración predeterminada.
2. Borra todas las cadenas y reglas personalizadas en las tablas `filter`, `nat` y `mangle`.
3. Garantiza que todo el tráfico entrante, saliente y reenviado esté permitido después de la ejecución.

### Cómo usarlo:
Ejecuta el script como root:
```bash
./script.sh
```
Después de la ejecución, todas las reglas del firewall serán restablecidas y el tráfico fluirá sin restricciones.

### Notas:
- Diseñado para sistemas Linux.
- Requiere privilegios de root.
- Usar con precaución, ya que elimina todas las protecciones del firewall.


---


# Tallafocs_on.sh

## English Version

### Firewall Security Script

This script configures firewall rules using `iptables`, clearing existing rules and applying restrictive policies to enhance security.

### Features:
1. Clears all existing `iptables` rules and resets counters.
2. Applies a restrictive policy (`DROP`) for all incoming, outgoing, and forwarded traffic.
3. Allows internal system operations via `localhost`.
4. Limits incoming TCP connections to prevent SYN flood attacks.
5. Restricts ICMP requests to mitigate ping flood attacks.

### How to Use:
Run the script as root:
```bash
./script.sh
```
After execution, strict firewall rules will be applied to protect the system.

### Notes:
- Designed for Linux systems.
- Requires root privileges.
- Ensure necessary ports are manually opened as needed.

---

## Versión en Español

### Script de Seguridad del Firewall

Este script configura las reglas del firewall utilizando `iptables`, eliminando reglas existentes y aplicando políticas restrictivas para mejorar la seguridad.

### Características:
1. Borra todas las reglas existentes de `iptables` y restablece los contadores.
2. Aplica una política restrictiva (`DROP`) para todo el tráfico entrante, saliente y reenviado.
3. Permite la operatividad interna del sistema a través de `localhost`.
4. Limita las conexiones TCP entrantes para prevenir ataques SYN flood.
5. Restringe las solicitudes ICMP para mitigar ataques de ping flood.

### Cómo usarlo:
Ejecuta el script como root:
```bash
./script.sh
```
Después de la ejecución, se aplicarán reglas estrictas de firewall para proteger el sistema.

### Notas:
- Diseñado para sistemas Linux.
- Requiere privilegios de root.
- Asegúrate de abrir manualmente los puertos necesarios según tus necesidades.


