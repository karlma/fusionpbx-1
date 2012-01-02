--BEGIN TRANSACTION;
INSERT INTO v_group_members VALUES(1,1,'user','admin');
INSERT INTO v_group_members VALUES(2,1,'agent','admin');
INSERT INTO v_group_members VALUES(3,1,'admin','admin');
INSERT INTO v_group_members VALUES(4,1,'user','superadmin');
INSERT INTO v_group_members VALUES(5,1,'agent','superadmin');
INSERT INTO v_group_members VALUES(6,1,'admin','superadmin');
INSERT INTO v_group_members VALUES(7,1,'superadmin','superadmin');
SELECT setval('v_group_members_id_seq', (SELECT MAX(id) FROM v_group_members)+1);
INSERT INTO v_groups VALUES(1,1,'public','Public Group');
INSERT INTO v_groups VALUES(2,1,'user','User Group');
INSERT INTO v_groups VALUES(3,1,'agent','Call Center Agent Group');
INSERT INTO v_groups VALUES(4,1,'admin','Administrator Group');
INSERT INTO v_groups VALUES(5,1,'superadmin','Super Administrator Group');
SELECT setval('v_groups_id_seq', (SELECT MAX(id) FROM v_groups)+1);
SELECT setval('v_software_id_seq', (SELECT MAX(id) FROM v_software)+1);
SELECT setval('v_users_id_seq', (SELECT MAX(id) FROM v_users)+1);
INSERT INTO v_modules VALUES(1,1,'Console','mod_console','Send logs to the console. ','Loggers','true','true');
INSERT INTO v_modules VALUES(2,1,'Log File','mod_logfile','Send logs to the local file system. ','Loggers','true','true');
INSERT INTO v_modules VALUES(3,1,'Syslog','mod_syslog','Send logs to a remote syslog server.','Loggers','false','false');
INSERT INTO v_modules VALUES(4,1,'ENUM','mod_enum','Route PSTN numbers over internet according to ENUM servers, such as e164.org.','Multi-Faceted','true','true');
INSERT INTO v_modules VALUES(5,1,'XML RPC','mod_xml_rpc','XML Remote Procedure Calls. Issue commands from your web application.','XML Interfaces','true','true');
INSERT INTO v_modules VALUES(6,1,'XML cURL','mod_xml_curl','XML Gateway Code. Configure FreeSWITCH from a web server on boot and on the fly.','XML Interfaces','false','false');
INSERT INTO v_modules VALUES(7,1,'XML CDR','mod_xml_cdr','XML based call detail record handler.','XML Interfaces','true','true');
INSERT INTO v_modules VALUES(8,1,'CDR CSV','mod_cdr_csv','CSV call detail record handler.','Event Handlers','false','false');
INSERT INTO v_modules VALUES(9,1,'Event Multicast','mod_event_multicast','Broadcasts events to netmask.','Event Handlers','false','false');
INSERT INTO v_modules VALUES(10,1,'Event Socket','mod_event_socket','Sends events via a single socket.','Event Handlers','true','true');
INSERT INTO v_modules VALUES(11,1,'Zeroconf','mod_zeroconf','Support for zeroconf.','Event Handlers','false','false');
INSERT INTO v_modules VALUES(12,1,'LDAP','mod_ldap','LDAP module made to obtain dialplans, user accounts, etc.','Directory Interfaces','false','false');
INSERT INTO v_modules VALUES(13,1,'Dingaling','mod_dingaling',NULL,'Endpoints','true','true');
INSERT INTO v_modules VALUES(14,1,'FreeTDM','mod_freetdm','Interface to TDM hardware.','Endpoints','false','false');
INSERT INTO v_modules VALUES(15,1,'PortAudio','mod_portaudio','Voice through a local soundcard.','Endpoints','false','false');
INSERT INTO v_modules VALUES(16,1,'ALSA','mod_alsa','','Endpoints','false','false');
INSERT INTO v_modules VALUES(17,1,'Sofia','mod_sofia','SIP module.','Endpoints','true','true');
INSERT INTO v_modules VALUES(18,1,'Loopback','mod_loopback','A loopback channel driver to make an outbound call as an inbound call.','Endpoints','true','true');
INSERT INTO v_modules VALUES(19,1,'Wanpipe','mod_wanpipe','','Endpoints','false','false');
INSERT INTO v_modules VALUES(20,1,'Woomera','mod_woomera','','Endpoints','false','false');
INSERT INTO v_modules VALUES(21,1,'OpenZAP','mod_openzap','Interface to Zaptel hardware.','Endpoints','false','false');
INSERT INTO v_modules VALUES(22,1,'CID Lookup','mod_cidlookup','Caller ID Lookup','Applications','false','false');
INSERT INTO v_modules VALUES(23,1,'Commands','mod_commands','API interface commands. ','Applications','true','true');
INSERT INTO v_modules VALUES(24,1,'Conference','mod_conference','Conference room module.','Applications','true','true');
INSERT INTO v_modules VALUES(25,1,'Dialplan Plan Tools','mod_dptools','Provides a number of apps and utilities for the dialplan.','Applications','true','true');
INSERT INTO v_modules VALUES(26,1,'Easyroute','mod_easyroute','DID routing engine that uses a database lookup to determine how to route an incoming call.','Applications','false','false');
INSERT INTO v_modules VALUES(27,1,'ESF','mod_esf','Holds the multi cast paging application for SIP.','Applications','true','true');
INSERT INTO v_modules VALUES(28,1,'Expr','mod_expr','Expression evaluation library.','Applications','true','true');
INSERT INTO v_modules VALUES(29,1,'Fax','mod_spandsp','FAX provides fax send and receive.','Applications','true','true');
INSERT INTO v_modules VALUES(30,1,'FIFO','mod_fifo','FIFO provides custom call queues including call park.','Applications','true','true');
INSERT INTO v_modules VALUES(31,1,'File String','mod_file_string','','Applications','false','false');
INSERT INTO v_modules VALUES(32,1,'FSV','mod_fsv','Video application (Recording and playback). ','Applications','true','true');
INSERT INTO v_modules VALUES(33,1,'Voicemail','mod_voicemail','Full featured voicemail module.','Applications','true','true');
INSERT INTO v_modules VALUES(34,1,'LCR','mod_lcr','Least Cost Routing.','Applications','false','false');
INSERT INTO v_modules VALUES(35,1,'Hash','mod_hash','Resource limitation. ','Applications','true','true');
INSERT INTO v_modules VALUES(36,1,'SoundTouch','mod_soundtouch','Modify pitch and other sound effects.','Applications','false','false');
INSERT INTO v_modules VALUES(37,1,'Spy','mod_spy','','Applications','false','false');
INSERT INTO v_modules VALUES(38,1,'VMD','mod_vmd','Voicemail Beep Detection.','Applications','false','false');
INSERT INTO v_modules VALUES(39,1,'Snom','mod_snom','','snom','false','false');
INSERT INTO v_modules VALUES(40,1,'Dialplan Directory','mod_dialplan_directory','Allows you to obtain a dialplan from a directory resource.','Dialplan Interfaces','false','false');
INSERT INTO v_modules VALUES(41,1,'Dialplan XML','mod_dialplan_xml','Allows you to program dialplans in XML format.','Dialplan Interfaces','true','true');
INSERT INTO v_modules VALUES(42,1,'Dialplan Asterisk','mod_dialplan_asterisk','Allows you to create dialplans the old-fashioned way.','Dialplan Interfaces','false','false');
INSERT INTO v_modules VALUES(43,1,'YAML','mod_yaml','','Dialplan Interfaces','false','false');
INSERT INTO v_modules VALUES(44,1,'Voip Codecs','mod_voipcodecs',NULL,'Codec Interfaces','false','false');
INSERT INTO v_modules VALUES(45,1,'G.723.1','mod_g723_1','G.723.1 codec.','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(46,1,'G.729','mod_g729','G729 codec supports passthrough mode. ','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(47,1,'AMR','mod_amr','AMR codec.','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(48,1,'AMRWB','mod_amrwb','AMRWB codec.','Codec Interfaces','false','false');
INSERT INTO v_modules VALUES(49,1,'iLBC','mod_ilbc','iLBC codec.','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(50,1,'Speex','mod_speex','Speex codec.','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(51,1,'Siren','mod_siren','Siren codec.','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(52,1,'CELT','mod_celt','CELT codec.','Codec Interfaces','false','true');
INSERT INTO v_modules VALUES(53,1,'H.26x','mod_h26x','H.26X signed linear codec. Video Pass-thru. ','Codec Interfaces','true','true');
INSERT INTO v_modules VALUES(54,1,'Sound File','mod_sndfile','Multi-format file format transcoder (WAV, etc).','File Format Interfaces','true','true');
INSERT INTO v_modules VALUES(55,1,'Native File','mod_native_file','File interface for codec specific file formats.','File Format Interfaces','true','true');
INSERT INTO v_modules VALUES(56,1,'Shout','mod_shout','MP3 files and shoutcast streams.','Streams / Files','true','true');
INSERT INTO v_modules VALUES(57,1,'Local Stream','mod_local_stream','For local streams (play all the files in a directory).','Streams / Files','true','true');
INSERT INTO v_modules VALUES(58,1,'Tone Stream','mod_tone_stream','Generate tone streams.','Streams / Files','true','true');
INSERT INTO v_modules VALUES(59,1,'SpiderMonkey','mod_spidermonkey','JavaScript support.','Languages','true','true');
INSERT INTO v_modules VALUES(60,1,'SpiderMonkey Core DB','mod_spidermonkey_core_db','JavaScript SQLite support.','Languages','false','false');
INSERT INTO v_modules VALUES(61,1,'SpiderMonkey cURL','mod_spidermonkey_curl','JavaScript cURL support.','Languages','false','false');
INSERT INTO v_modules VALUES(62,1,'SpiderMonkey ODBC','mod_spidermonkey_odbc','JavaScript ODBC support.','Languages','false','false');
INSERT INTO v_modules VALUES(63,1,'SpiderMonkey Socket','mod_spidermonkey_socket','JavaScript Socket support.','Languages','false','false');
INSERT INTO v_modules VALUES(64,1,'SpiderMonkey Teletone','mod_spidermonkey_teletone','JavaScript Teletone support.','Languages','false','false');
INSERT INTO v_modules VALUES(65,1,'Perl','mod_perl','Perl script.','Languages','false','false');
INSERT INTO v_modules VALUES(66,1,'Python','mod_python','Python','Languages','false','false');
INSERT INTO v_modules VALUES(67,1,'Java','mod_java','Java','Languages','false','false');
INSERT INTO v_modules VALUES(68,1,'Lua','mod_lua','Lua script.','Languages','true','true');
INSERT INTO v_modules VALUES(69,1,'Flite','mod_flite','Text to Speech.','ASR / TTS','true','true');
INSERT INTO v_modules VALUES(70,1,'PocketSphinx','mod_pocketsphinx','Speech Recognition. ','ASR / TTS','true','true');
INSERT INTO v_modules VALUES(71,1,'Cepstral','mod_cepstral','Text to Speech.','ASR / TTS','false','false');
INSERT INTO v_modules VALUES(72,1,'OpenMRCP','mod_openmrcp','Allows communication with Media Resource Control Protocol servers.','ASR / TTS','false','false');
INSERT INTO v_modules VALUES(73,1,'RSS','mod_rss','Reads RSS feeds via a TTS engine.','ASR / TTS','false','false');
INSERT INTO v_modules VALUES(74,1,'German','mod_say_de','','Say','false','false');
INSERT INTO v_modules VALUES(75,1,'English','mod_say_en',NULL,'Say','true','true');
INSERT INTO v_modules VALUES(76,1,'Spanish','mod_say_es','','Say','false','false');
INSERT INTO v_modules VALUES(77,1,'French','mod_say_fr','','Say','false','false');
INSERT INTO v_modules VALUES(78,1,'Italian','mod_say_it','','Say','false','false');
INSERT INTO v_modules VALUES(79,1,'Dutch','mod_say_nl','','Say','false','false');
INSERT INTO v_modules VALUES(80,1,'Russian','mod_say_ru','','Say','false','false');
INSERT INTO v_modules VALUES(81,1,'Chinese','mod_say_zh','','Say','false','false');
INSERT INTO v_modules VALUES(82,1,'Valet Parking','mod_valet_parking',NULL,'Applications','true','true');
INSERT INTO v_modules VALUES(83,1,'Directory','mod_directory',NULL,'Applications','true','true');
INSERT INTO v_modules VALUES(84,1,'Call Center','mod_callcenter','Call Center','Applications','true','true');
SELECT setval('v_modules_module_id_seq', (SELECT MAX(module_id) FROM v_modules)+1);
INSERT INTO v_settings (v_id, numbering_plan, default_gateway, event_socket_ip_address, event_socket_port, event_socket_password, xml_rpc_http_port, xml_rpc_auth_realm, xml_rpc_auth_user, xml_rpc_auth_pass, admin_pin, smtp_host, smtp_secure, smtp_auth, smtp_username, smtp_password, smtp_from, smtp_from_name, mod_shout_decoder, mod_shout_volume) VALUES (1,'US','','127.0.0.1',8021,'ClueCon',8787,'localhost','xmlrpc','7e4d3i',1234,'','none','','','','','Voicemail','i386',0.3);
SELECT setval('v_settings_setting_id_seq', (SELECT MAX(setting_id) FROM v_settings)+1);
INSERT INTO v_system_settings (v_domain, v_account_code, v_server_protocol, v_server_port, php_dir, tmp_dir, bin_dir, v_startup_script_dir, v_package_version, v_build_version, v_build_revision, v_label, v_name, v_dir, v_parent_dir, v_backup_dir, v_web_dir, v_web_root, v_relative_url, v_conf_dir, v_db_dir, v_htdocs_dir, v_log_dir, v_extensions_dir, v_gateways_dir, v_dialplan_public_dir, v_dialplan_default_dir, v_mod_dir, v_scripts_dir, v_grammar_dir, v_storage_dir, v_voicemail_dir, v_recordings_dir, v_download_path, v_sounds_dir, v_provisioning_tftp_dir, v_provisioning_ftp_dir, v_provisioning_https_dir, v_provisioning_http_dir, v_template_name, v_time_zone, v_description) VALUES ('localhost','','','','{program_dir}/php','{program_dir}/temp','{program_dir}/FreeSWITCH','/','','1.0.6','Release','FreeSWITCH','freeswitch','{program_dir}/FreeSWITCH','{program_dir}','{program_dir}/backup','{program_dir}/www/localhost','{program_dir}/www/localhost','/','{program_dir}/FreeSWITCH/conf','{program_dir}/FreeSWITCH/db','{program_dir}/FreeSWITCH/htodcs','{program_dir}/FreeSWITCH/log','{program_dir}/FreeSWITCH/conf/directory/default','{program_dir}/FreeSWITCH/conf/sip_profiles/external','{program_dir}/FreeSWITCH/conf/dialplan/public','{program_dir}/FreeSWITCH/conf/dialplan/default','{program_dir}/modules','{program_dir}/FreeSWITCH/scripts','{program_dir}/FreeSWITCH/grammar','{program_dir}/FreeSWITCH/storage','{program_dir}/FreeSWITCH/storage/voicemail','{program_dir}/FreeSWITCH/recordings','http://fusionpbx.com/downloads/fusionpbx.tgz','{program_dir}/FreeSWITCH/sounds','','','','','','','');
SELECT setval('v_system_settings_v_id_seq', (SELECT MAX(v_id) FROM v_system_settings)+1);
INSERT INTO v_vars VALUES(1,1,'sound_prefix','$${base_dir}/sounds/en/us/callie','Sound','true',3,'U2V0cyB0aGUgc291bmQgZGlyZWN0b3J5Lg==');
INSERT INTO v_vars VALUES(1,2,'domain','$${local_ip_v4}','Domain','true',1,'U2V0cyB0aGUgZGVmYXVsdCBkb21haW4u');
INSERT INTO v_vars VALUES(1,3,'domain_name','$${domain}','Domain','true',2,'');
INSERT INTO v_vars VALUES(1,4,'hold_music','local_stream://moh','Music on Hold','true',4,'');
INSERT INTO v_vars VALUES(1,5,'global_codec_prefs','G7221@32000h,G7221@16000h,G722,PCMU,PCMA,GSM','Codecs','true',5,'RzcyMjFAMzIwMDBoLEc3MjIxQDE2MDAwaCxHNzIyLFBDTVUsUENNQSxpTEJDLEdTTSxIMjYzLEgyNjQ=');
INSERT INTO v_vars VALUES(1,6,'outbound_codec_prefs','PCMU,PCMA,GSM','Codecs','true',6,'ZGVmYXVsdDogUENNVSxQQ01BLEdTTQ==');
INSERT INTO v_vars VALUES(1,7,'xmpp_client_profile','xmppc','Dingaling','true',7,'eG1wcF9jbGllbnRfcHJvZmlsZSBhbmQgeG1wcF9zZXJ2ZXJfcHJvZmlsZSB4bXBwX2NsaWVudF9wcm9maWxlIGNhbiBiZSBhbnkgc3RyaW5nLiB4bXBwX3NlcnZlcl9wcm9maWxlIGlzIGFwcGVuZGVkIHRvICJkaW5nYWxpbmdfIiB0byBmb3JtIHRoZSBkYXRhYmFzZSBuYW1lIGNvbnRhaW5pbmcgdGhlICJzdWJzY3JpcHRpb25zIiB0YWJsZS4gdXNlZCBieTogZGluZ2FsaW5nLmNvbmYueG1sIGVudW0uY29uZi54bWw=');
INSERT INTO v_vars VALUES(1,8,'xmpp_server_profile','xmpps','Dingaling','true',8,'');
INSERT INTO v_vars VALUES(1,9,'bind_server_ip','auto','Dingaling','true',9,'Q2FuIGJlIGFuIGlwIGFkZHJlc3MsIGEgZG5zIG5hbWUsIG9yICJhdXRvIi4gVGhpcyBkZXRlcm1pbmVzIGFuIGlwIGFkZHJlc3MgYXZhaWxhYmxlIG9uIHRoaXMgaG9zdCB0byBiaW5kLiBJZiB5b3UgYXJlIHNlcGFyYXRpbmcgUlRQIGFuZCBTSVAgdHJhZmZpYywgeW91IHdpbGwgd2FudCB0byBoYXZlIHVzZSBkaWZmZXJlbnQgYWRkcmVzc2VzIHdoZXJlIHRoaXMgdmFyaWFibGUgYXBwZWFycy4gVXNlZCBieTogZGluZ2FsaW5nLmNvbmYueG1s');
INSERT INTO v_vars VALUES(1,10,'external_rtp_ip','stun:stun.fwdnet.net','IP Address','true',10,'KElmIHlvdScncmUgZ29pbmcgdG8gbG9hZCB0ZXN0IHRoZW4gcGxlYXNlIGlucHV0IHJlYWwgSVAgYWRkcmVzc2VzIGZvciBleHRlcm5hbF9ydHBfaXAgYW5kIGV4dGVybmFsX3NpcF9pcCkNCg0KQ2FuIGJlIGFuIG9uZSBvZjoNCiAgIGlwIGFkZHJlc3M6ICIxMi4zNC41Ni43OCINCiAgIGEgc3R1biBzZXJ2ZXIgbG9va3VwOiAic3R1bjpzdHVuLnNlcnZlci5jb20iDQogICBhIEROUyBuYW1lOiAiaG9zdDpob3N0LnNlcnZlci5jb20iDQoNCndoZXJlIGZzLm15ZG9tYWluLmNvbSBpcyBhIEROUyBBIHJlY29yZC11c2VmdWwgd2hlbiBmcyBpcyBvbiBhIGR5bmFtaWMgSVAgYWRkcmVzcywgYW5kIHVzZXMgYSBkeW5hbWljIEROUyB1cGRhdGVyLiBJZiB1bnNwZWNpZmllZCwgdGhlIGJpbmRfc2VydmVyX2lwIHZhbHVlIGlzIHVzZWQuIFVzZWQgYnk6IHNvZmlhLmNvbmYueG1sIGRpbmdhbGluZy5jb25mLnhtbA==');
INSERT INTO v_vars VALUES(1,11,'external_sip_ip','stun:stun.fwdnet.net','IP Address','true',11,'VXNlZCBhcyB0aGUgcHVibGljIElQIGFkZHJlc3MgZm9yIFNEUC4NCg0KQ2FuIGJlIGFuIG9uZSBvZjoNCiAgIGlwIGFkZHJlc3M6ICIxMi4zNC41Ni43OCINCiAgIGEgc3R1biBzZXJ2ZXIgbG9va3VwOiAic3R1bjpzdHVuLnNlcnZlci5jb20iDQogICBhIEROUyBuYW1lOiAiaG9zdDpob3N0LnNlcnZlci5jb20iDQoNCndoZXJlIGZzLm15ZG9tYWluLmNvbSBpcyBhIEROUyBBIHJlY29yZC11c2VmdWwgd2hlbiBmcyBpcyBvbiBhIGR5bmFtaWMgSVAgYWRkcmVzcywgYW5kIHVzZXMgYSBkeW5hbWljIEROUyB1cGRhdGVyLiBJZiB1bnNwZWNpZmllZCwgdGhlIGJpbmRfc2VydmVyX2lwIHZhbHVlIGlzIHVzZWQuIFVzZWQgYnk6IHNvZmlhLmNvbmYueG1sIGRpbmdhbGluZy5jb25mLnhtbA==');
INSERT INTO v_vars VALUES(1,12,'unroll_loops','true','SIP','true',12,'VXNlZCB0byB0dXJuIG9uIHNpcCBsb29wYmFjayB1bnJvbGxpbmcu');
INSERT INTO v_vars VALUES(1,13,'call_debug','false','Defaults','true',13,'');
INSERT INTO v_vars VALUES(1,14,'console_loglevel','info','Defaults','true',14,'');
INSERT INTO v_vars VALUES(1,15,'default_areacode',208,'Defaults','true',15,'');
INSERT INTO v_vars VALUES(1,16,'uk-ring','%(400,200,400,450);%(400,2200,400,450)','Defaults','true',16,'');
INSERT INTO v_vars VALUES(1,17,'us-ring','%(2000, 4000, 440.0, 480.0)','Defaults','true',17,'');
INSERT INTO v_vars VALUES(1,18,'fr-ring','%(1500, 3500, 440.0, 0.0)','Defaults','true',18,'');
INSERT INTO v_vars VALUES(1,19,'rs-ring','%(1000, 4000, 425.0, 0.0)','Defaults','true',19,'');
INSERT INTO v_vars VALUES(1,20,'bong-ring','v=-7;%(100,0,941.0,1477.0);v=-7;>=2;+=.1;%(1400,0,350,440)','Defaults','true',20,'');
INSERT INTO v_vars VALUES(1,21,'sit','%(274,0,913.8);%(274,0,1370.6);%(380,0,1776.7)','Defaults','true',21,'');
INSERT INTO v_vars VALUES(1,22,'sip_tls_version','tlsv1','SIP and TLS','true',21,'U0lQIGFuZCBUTFMgc2V0dGluZ3Mu');
INSERT INTO v_vars VALUES(1,23,'internal_auth_calls','true','SIP Profile: Internal','true',22,'');
INSERT INTO v_vars VALUES(1,24,'internal_sip_port',5060,'SIP Profile: Internal','true',23,'');
INSERT INTO v_vars VALUES(1,25,'internal_tls_port',5061,'SIP Profile: Internal','true',24,'');
INSERT INTO v_vars VALUES(1,26,'internal_ssl_enable','false','SIP Profile: Internal','true',25,'');
INSERT INTO v_vars VALUES(1,27,'internal_ssl_dir','$${base_dir}/conf/ssl','SIP Profile: Internal','true',26,'');
INSERT INTO v_vars VALUES(1,28,'external_auth_calls','false','SIP Profile: External','true',27,'');
INSERT INTO v_vars VALUES(1,29,'external_sip_port',5080,'SIP Profile: External','true',28,'');
INSERT INTO v_vars VALUES(1,30,'external_tls_port',5081,'SIP Profile: External','true',29,'');
INSERT INTO v_vars VALUES(1,31,'external_ssl_enable','false','SIP Profile: External','true',29,'');
INSERT INTO v_vars VALUES(1,32,'external_ssl_dir','$${base_dir}/conf/ssl','SIP Profile: External','true',30,'');
INSERT INTO v_vars VALUES(1,33,'use_profile','internal','Defaults','true',31,'');
INSERT INTO v_vars VALUES(1,34,'default_language','en','Defaults','true',32,'');
INSERT INTO v_vars VALUES(1,35,'default_dialect','us','Defaults','true',33,'');
INSERT INTO v_vars VALUES(1,36,'default_voice','callie','Defaults','true',34,'');
SELECT setval('v_vars_var_id_seq', (SELECT MAX(var_id) FROM v_vars)+1);
CREATE INDEX index_billsec ON v_xml_cdr(billsec);
CREATE INDEX index_caller_id_name ON v_xml_cdr(caller_id_name);
CREATE INDEX index_destination_number ON v_xml_cdr(destination_number);
CREATE INDEX index_duration ON v_xml_cdr(duration);
CREATE INDEX index_hangup_cause ON v_xml_cdr(hangup_cause);
CREATE INDEX index_start_stamp ON v_xml_cdr(start_stamp);
--COMMIT;
