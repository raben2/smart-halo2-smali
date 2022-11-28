.class public Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;
.super Ljava/io/InputStream;
.source "ArchiveInputStream.java"


# static fields
.field private static final APPLICATION_BIN:Ljava/lang/String; = "application.bin"

.field private static final APPLICATION_HEX:Ljava/lang/String; = "application.hex"

.field private static final APPLICATION_INIT:Ljava/lang/String; = "application.dat"

.field private static final BOOTLOADER_BIN:Ljava/lang/String; = "bootloader.bin"

.field private static final BOOTLOADER_HEX:Ljava/lang/String; = "bootloader.hex"

.field private static final MANIFEST:Ljava/lang/String; = "manifest.json"

.field private static final SOFTDEVICE_BIN:Ljava/lang/String; = "softdevice.bin"

.field private static final SOFTDEVICE_HEX:Ljava/lang/String; = "softdevice.hex"

.field private static final SYSTEM_INIT:Ljava/lang/String; = "system.dat"

.field private static final TAG:Ljava/lang/String; = "DfuArchiveInputStream"


# instance fields
.field private applicationBytes:[B

.field private applicationInitBytes:[B

.field private applicationSize:I

.field private bootloaderBytes:[B

.field private bootloaderSize:I

.field private bytesRead:I

.field private bytesReadFromCurrentSource:I

.field private bytesReadFromMarkedSource:I

.field private crc32:Ljava/util/zip/CRC32;

.field private currentSource:[B

.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

.field private markedSource:[B

.field private softDeviceAndBootloaderBytes:[B

.field private softDeviceBytes:[B

.field private softDeviceSize:I

.field private systemInitBytes:[B

.field private type:I

.field private final zipInputStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 130
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->zipInputStream:Ljava/util/zip/ZipInputStream;

    .line 132
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->crc32:Ljava/util/zip/CRC32;

    .line 133
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 135
    iput p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 142
    :try_start_0
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->parseZip(I)V

    .line 147
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    const/4 v0, 0x1

    if-eqz p2, :cond_f

    .line 151
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getApplicationInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    and-int/lit8 p2, p3, 0x4

    if-lez p2, :cond_2

    .line 152
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getApplicationInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object p2

    .line 153
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 154
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationInitBytes:[B

    .line 156
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-eqz v1, :cond_1

    .line 158
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    array-length p2, p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    .line 159
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Application file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p2, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_3

    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_6

    .line 165
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    if-nez p2, :cond_5

    .line 168
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object p2

    .line 169
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 170
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 172
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v1, :cond_4

    .line 174
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    array-length p2, p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 175
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    goto :goto_1

    .line 173
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bootloader file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Manifest: softdevice and bootloader specified. Use softdevice_bootloader instead."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_6
    :goto_1
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p3, :cond_7

    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_9

    .line 181
    :cond_7
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceInfo()Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;

    move-result-object p2

    .line 182
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 183
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 185
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz v1, :cond_8

    .line 187
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    array-length p2, p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 188
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    goto :goto_2

    .line 186
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SoftDevice file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/FileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_9
    :goto_2
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz p3, :cond_a

    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_d

    and-int/lit8 p3, p3, 0x2

    if-lez p3, :cond_d

    .line 195
    :cond_a
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    if-nez p2, :cond_c

    .line 198
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->getSoftdeviceBootloaderInfo()Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;

    move-result-object p2

    .line 199
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iput-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    .line 200
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getDatFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iput-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 202
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz p3, :cond_b

    .line 204
    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getSoftdeviceSize()I

    move-result p3

    iput p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 205
    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getBootloaderSize()I

    move-result p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 206
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    goto :goto_3

    .line 203
    :cond_b
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lno/nordicsemi/android/dfu/internal/manifest/SoftDeviceBootloaderFileInfo;->getBinFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Manifest: The softdevice_bootloader may not be used together with softdevice or bootloader."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_3
    if-eqz p2, :cond_e

    goto/16 :goto_5

    .line 211
    :cond_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Manifest file must specify at least one file."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    if-eqz p3, :cond_10

    and-int/lit8 p2, p3, 0x4

    if-lez p2, :cond_12

    .line 228
    :cond_10
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "application.hex"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 229
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-nez p2, :cond_11

    .line 230
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "application.bin"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 231
    :cond_11
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-eqz p2, :cond_12

    .line 232
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    array-length p2, p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    .line 233
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "application.dat"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationInitBytes:[B

    .line 234
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    goto :goto_4

    :cond_12
    const/4 p2, 0x0

    :goto_4
    if-eqz p3, :cond_13

    and-int/lit8 v1, p3, 0x2

    if-lez v1, :cond_15

    .line 241
    :cond_13
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v2, "bootloader.hex"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 242
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v1, :cond_14

    .line 243
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v2, "bootloader.bin"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 244
    :cond_14
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v1, :cond_15

    .line 245
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    array-length p2, p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    .line 246
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "system.dat"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 247
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    :cond_15
    if-eqz p3, :cond_16

    and-int/2addr p3, v0

    if-lez p3, :cond_18

    .line 254
    :cond_16
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "softdevice.hex"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iput-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 255
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-nez p3, :cond_17

    .line 256
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string v1, "softdevice.bin"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    iput-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 257
    :cond_17
    iget-object p3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz p3, :cond_18

    .line 258
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    array-length p2, p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 259
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    const-string p3, "system.dat"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    .line 260
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    iput-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 p2, 0x1

    :cond_18
    if-eqz p2, :cond_19

    .line 269
    :goto_5
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getContentType()I

    move-result p1

    iput p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 272
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V

    return-void

    .line 266
    :cond_19
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The ZIP file must contain an Application, a Soft Device and/or a Bootloader."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 271
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getContentType()I

    move-result p2

    iput p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 272
    iget-object p2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {p2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 273
    throw p1
.end method

.method private parseZip(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 321
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 325
    :goto_0
    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 326
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-direct {p0, v3, v4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->validateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DfuArchiveInputStream"

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A directory found in the ZIP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    :goto_1
    iget-object v4, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 337
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 342
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    new-instance v4, Lno/nordicsemi/android/dfu/internal/HexInputStream;

    invoke-direct {v4, v2, p1}, Lno/nordicsemi/android/dfu/internal/HexInputStream;-><init>([BI)V

    .line 344
    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 345
    invoke-virtual {v4, v2}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->read([B)I

    .line 346
    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/internal/HexInputStream;->close()V

    :cond_2
    const-string v4, "manifest.json"

    .line 350
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3

    .line 352
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 355
    :cond_3
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :cond_4
    iget-object v4, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 362
    :cond_5
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->entries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v1, :cond_6

    .line 368
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;

    .line 369
    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/manifest/ManifestFile;->getManifest()Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    .line 370
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    if-nez p1, :cond_7

    const-string p1, "DfuArchiveInputStream"

    const-string v0, "Manifest failed to be parsed. Did you add \n-keep class no.nordicsemi.android.dfu.** { *; }\nto your proguard rules?"

    .line 371
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string p1, "DfuArchiveInputStream"

    const-string v0, "Manifest not found in the ZIP. It is recommended to use a distribution file created with: https://github.com/NordicSemiconductor/pc-nrfutil/ (for Legacy DFU use version 0.5.x)"

    .line 376
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void

    .line 363
    :cond_8
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "No files found in the ZIP. Check if the URI provided is valid and the ZIP contains required files on root level, not in a directory."

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rawRead([BII)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 423
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    array-length v0, v0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    sub-int/2addr v0, v1

    .line 424
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 425
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    add-int/2addr v0, p3

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 427
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    add-int/2addr v0, p3

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 428
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    return p3
.end method

.method private startNextFile()[B
    .locals 2

    .line 567
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    .line 568
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-eq v0, v1, :cond_1

    if-eqz v1, :cond_1

    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 570
    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 572
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    :goto_0
    const/4 v1, 0x0

    .line 574
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    return-object v0
.end method

.method private validateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 301
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "File is outside extraction target directory."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public applicationImageSize()I
    .locals 1

    .line 626
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public available()I
    .locals 2

    .line 591
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    if-nez v1, :cond_0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    if-nez v1, :cond_0

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v1, v1, 0x3

    if-lez v1, :cond_0

    .line 593
    array-length v0, v0

    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationImageSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceImageSize()I

    move-result v0

    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderImageSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationImageSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bootloaderImageSize()I
    .locals 1

    .line 616
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    .line 384
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    .line 385
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    .line 386
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    const/4 v1, 0x0

    .line 387
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    .line 388
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    .line 389
    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 390
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->zipInputStream:Ljava/util/zip/ZipInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method

.method public fullReset()V
    .locals 3

    .line 470
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    if-ne v2, v1, :cond_0

    .line 471
    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    :cond_0
    const/4 v0, 0x0

    .line 474
    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 475
    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->mark(I)V

    .line 476
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->reset()V

    return-void
.end method

.method public getApplicationInit()[B
    .locals 1

    .line 650
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationInitBytes:[B

    return-object v0
.end method

.method public getBytesRead()I
    .locals 1

    .line 483
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 507
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v0, :cond_0

    .line 508
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 510
    :cond_0
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    if-lez v0, :cond_1

    .line 511
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 512
    :cond_1
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderSize:I

    if-lez v0, :cond_2

    .line 513
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 514
    :cond_2
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationSize:I

    if-lez v0, :cond_3

    .line 515
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 516
    :cond_3
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    return v0
.end method

.method public getCrc32()J
    .locals 2

    .line 492
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSystemInit()[B
    .locals 1

    .line 640
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->systemInitBytes:[B

    return-object v0
.end method

.method public isSecureDfuRequired()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->manifest:Lno/nordicsemi/android/dfu/internal/manifest/Manifest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/manifest/Manifest;->isSecureDfuRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mark(I)V
    .locals 0

    .line 444
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->markedSource:[B

    .line 445
    iget p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    iput p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromMarkedSource:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    .line 400
    new-array v0, v0, [B

    .line 401
    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 404
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 410
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    invoke-direct {p0, p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->rawRead([BII)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 416
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->startNextFile()[B

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 417
    invoke-direct {p0, p1, p2, p3}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->rawRead([BII)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 4

    .line 450
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->markedSource:[B

    iput-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    .line 451
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromMarkedSource:I

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 454
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 455
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 457
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesRead:I

    .line 459
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->crc32:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    const/4 v2, 0x0

    iget v3, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    return-void
.end method

.method public setContentType(I)I
    .locals 3

    .line 527
    iput p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    .line 529
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    if-nez v1, :cond_0

    .line 530
    iget v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    :cond_0
    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 534
    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    if-nez v2, :cond_1

    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-nez v2, :cond_1

    .line 535
    iget v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    .line 537
    :cond_1
    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    if-nez v2, :cond_3

    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-nez v2, :cond_3

    .line 538
    iget v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    goto :goto_0

    .line 541
    :cond_2
    iget-object v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v2, :cond_3

    .line 542
    iget v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v2, v2, -0x4

    iput v2, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    :cond_3
    :goto_0
    if-lez v1, :cond_4

    .line 545
    iget-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceAndBootloaderBytes:[B

    if-eqz v1, :cond_4

    .line 546
    iput-object v1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    goto :goto_1

    :cond_4
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_5

    .line 548
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceBytes:[B

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    goto :goto_1

    :cond_5
    and-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_6

    .line 550
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bootloaderBytes:[B

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    goto :goto_1

    :cond_6
    if-lez v0, :cond_7

    .line 552
    iget-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationBytes:[B

    iput-object p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->currentSource:[B

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 553
    iput p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->bytesReadFromCurrentSource:I

    .line 554
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->mark(I)V

    .line 555
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->reset()V

    .line 556
    iget p1, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    return p1
.end method

.method public skip(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public softDeviceImageSize()I
    .locals 1

    .line 606
    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->type:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->softDeviceSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
