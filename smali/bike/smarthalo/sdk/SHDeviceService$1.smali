.class Lbike/smarthalo/sdk/SHDeviceService$1;
.super Lbike/smarthalo/sdk/models/TransceiveCallback;
.source "SHDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHDeviceService;->exchangeKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {p0}, Lbike/smarthalo/sdk/models/TransceiveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([B)V
    .locals 9

    if-eqz p1, :cond_2

    .line 621
    array-length v0, p1

    const/16 v1, 0x45

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    const/16 v2, 0x41

    .line 626
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 627
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 628
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v2}, Lbike/smarthalo/sdk/SHDeviceService;->access$100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v2

    iget-object v2, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/sdk/SHSdkHelpers;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {v2}, Lbike/smarthalo/sdk/SHDeviceService;->access$100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v2

    iget-object v2, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 631
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceService;->access$200(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 632
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    const-string v0, "id and public key mismatch!"

    invoke-static {p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$000(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V

    return-void

    .line 637
    :cond_1
    :try_start_0
    new-instance v1, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;

    invoke-direct {v1, v0, p1}, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;-><init>([B[B)V

    .line 638
    invoke-virtual {v1}, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->getCentralKey()[B

    move-result-object p1

    .line 639
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->getAes()Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->access$302(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;)Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    .line 641
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 642
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setCentralPubKey:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 643
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 644
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 646
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    const/4 v4, 0x0

    const-string v5, "setCentralKey"

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-instance v8, Lbike/smarthalo/sdk/SHDeviceService$1$1;

    invoke-direct {v8, p0}, Lbike/smarthalo/sdk/SHDeviceService$1$1;-><init>(Lbike/smarthalo/sdk/SHDeviceService$1;)V

    invoke-virtual/range {v2 .. v8}, Lbike/smarthalo/sdk/SHDeviceService;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    .line 654
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->access$000(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    .line 622
    :cond_2
    :goto_2
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService$1;->this$0:Lbike/smarthalo/sdk/SHDeviceService;

    const-string v0, "Incorrect received payload size"

    invoke-static {p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->access$000(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V

    return-void
.end method
