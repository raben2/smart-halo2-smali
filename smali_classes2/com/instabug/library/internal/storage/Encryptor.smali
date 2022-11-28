.class public Lcom/instabug/library/internal/storage/Encryptor;
.super Ljava/lang/Object;
.source "Encryptor.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RR_NOT_CHECKED",
        "RV_RETURN_VALUE_IGNORED_BAD_PRACTICE"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "ibg-native"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Lcom/instabug/library/internal/storage/ProcessedBytes;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/instabug/library/internal/storage/Encryptor;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES/ECB/NoPadding"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "AES/ECB/NoPadding"

    .line 81
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 85
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x100

    .line 86
    :try_start_2
    new-array v7, v6, [B

    .line 87
    invoke-virtual {v5, v7, v2, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 88
    invoke-virtual {v4, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 89
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 93
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rws"

    invoke-direct {v6, p0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    array-length v1, v4

    invoke-virtual {v6, v4, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v1, v7

    new-array v1, v1, [B

    .line 98
    invoke-static {p0, v1}, Lcom/instabug/library/internal/storage/Encryptor;->a(Ljava/io/File;[B)V

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/library/util/FileUtils;->isReproStepFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/library/util/FileUtils;->getPathWithDecryptedFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 106
    :cond_0
    new-instance v4, Lcom/instabug/library/internal/storage/ProcessedBytes;

    const/4 v7, 0x1

    invoke-direct {v4, v1, v7}, Lcom/instabug/library/internal/storage/ProcessedBytes;-><init>([BZ)V
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 119
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v4

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :catch_8
    move-exception v4

    goto :goto_1

    :catch_9
    move-exception v4

    goto :goto_1

    :catch_a
    move-exception v4

    goto :goto_1

    :catch_b
    move-exception v4

    goto :goto_1

    :catch_c
    move-exception v4

    goto :goto_1

    :catch_d
    move-exception v4

    goto :goto_1

    :catch_e
    move-exception v4

    :goto_1
    move-object v6, v1

    goto :goto_3

    :catch_f
    move-exception v4

    goto :goto_2

    :catch_10
    move-exception v4

    goto :goto_2

    :catch_11
    move-exception v4

    goto :goto_2

    :catch_12
    move-exception v4

    goto :goto_2

    :catch_13
    move-exception v4

    goto :goto_2

    :catch_14
    move-exception v4

    goto :goto_2

    :catch_15
    move-exception v4

    :goto_2
    move-object v5, v1

    move-object v6, v5

    :goto_3
    move-object v1, v4

    :goto_4
    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v5, v1

    goto :goto_b

    :catch_16
    move-exception v3

    goto :goto_5

    :catch_17
    move-exception v3

    goto :goto_5

    :catch_18
    move-exception v3

    goto :goto_5

    :catch_19
    move-exception v3

    goto :goto_5

    :catch_1a
    move-exception v3

    goto :goto_5

    :catch_1b
    move-exception v3

    goto :goto_5

    :catch_1c
    move-exception v3

    :goto_5
    move-object v5, v1

    move-object v6, v5

    :goto_6
    if-eqz v1, :cond_1

    .line 123
    :try_start_5
    invoke-static {v0, v1}, Lcom/instabug/library/internal/storage/Encryptor;->a(ILjava/security/Key;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v1, v6

    goto :goto_b

    :cond_1
    :goto_7
    const-string v0, "Encryptor"

    .line 125
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " occurred while decrypting path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_2

    .line 129
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_1d
    move-exception p0

    goto :goto_9

    :cond_2
    :goto_8
    if-eqz v6, :cond_3

    .line 132
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1d

    goto :goto_a

    .line 135
    :goto_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    :cond_3
    :goto_a
    new-instance p0, Lcom/instabug/library/internal/storage/ProcessedBytes;

    new-array v0, v2, [B

    invoke-direct {p0, v0, v2}, Lcom/instabug/library/internal/storage/ProcessedBytes;-><init>([BZ)V

    return-object p0

    :goto_b
    if-eqz v5, :cond_4

    .line 139
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_c

    :catch_1e
    move-exception v0

    goto :goto_d

    :cond_4
    :goto_c
    if-eqz v1, :cond_5

    .line 142
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1e

    goto :goto_e

    .line 145
    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    :cond_5
    :goto_e
    throw p0
.end method

.method private static a(ILjava/security/Key;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "AES/ECB/NoPadding"

    .line 155
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const/4 p1, 0x1

    .line 158
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "Error: %s occurred while resetting the Cipher instance."

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Encryptor"

    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public static a(Ljava/io/File;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 154
    :cond_0
    throw p0
.end method

.method private static a(ILjava/io/File;)Z
    .locals 10

    .line 6
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 7
    invoke-static {v0}, Lcom/instabug/library/util/memory/MemoryUtils;->isLowMemory(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/instabug/library/internal/storage/Encryptor;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "AES/ECB/NoPadding"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "AES/ECB/NoPadding"

    .line 10
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 11
    invoke-virtual {v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 14
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x100

    .line 16
    :try_start_2
    new-array v7, v6, [B

    .line 17
    invoke-virtual {v5, v7, v1, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 18
    invoke-virtual {v4, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 22
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rws"

    invoke-direct {v6, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    array-length v2, v4

    invoke-virtual {v6, v4, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 42
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 45
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v0

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_4

    :catch_7
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v6, v2

    move-object v2, v5

    goto/16 :goto_b

    :catch_8
    move-exception v4

    goto :goto_1

    :catch_9
    move-exception v4

    goto :goto_1

    :catch_a
    move-exception v4

    goto :goto_1

    :catch_b
    move-exception v4

    goto :goto_1

    :catch_c
    move-exception v4

    goto :goto_1

    :catch_d
    move-exception v4

    goto :goto_1

    :catch_e
    move-exception v4

    :goto_1
    move-object v6, v2

    goto :goto_3

    :catch_f
    move-exception v4

    goto :goto_2

    :catch_10
    move-exception v4

    goto :goto_2

    :catch_11
    move-exception v4

    goto :goto_2

    :catch_12
    move-exception v4

    goto :goto_2

    :catch_13
    move-exception v4

    goto :goto_2

    :catch_14
    move-exception v4

    goto :goto_2

    :catch_15
    move-exception v4

    :goto_2
    move-object v5, v2

    move-object v6, v5

    :goto_3
    move-object v2, v4

    :goto_4
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v6, v2

    goto :goto_b

    :catch_16
    move-exception v3

    goto :goto_5

    :catch_17
    move-exception v3

    goto :goto_5

    :catch_18
    move-exception v3

    goto :goto_5

    :catch_19
    move-exception v3

    goto :goto_5

    :catch_1a
    move-exception v3

    goto :goto_5

    :catch_1b
    move-exception v3

    goto :goto_5

    :catch_1c
    move-exception v3

    :goto_5
    move-object v5, v2

    move-object v6, v5

    :goto_6
    if-eqz v2, :cond_0

    .line 49
    :try_start_5
    invoke-static {p0, v2}, Lcom/instabug/library/internal/storage/Encryptor;->a(ILjava/security/Key;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v2, v5

    goto :goto_b

    :cond_0
    :goto_7
    const-string v2, ""

    const/4 v4, 0x2

    if-ne p0, v0, :cond_1

    const-string v2, "encrypting"

    goto :goto_8

    :cond_1
    if-ne p0, v4, :cond_2

    const-string v2, "decrypting"

    :cond_2
    :goto_8
    const-string p0, "Encryptor"

    const-string v7, "Error: %s occurred while %s file in path: %s"

    const/4 v8, 0x3

    .line 57
    :try_start_6
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v1

    aput-object v2, v8, v0

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_3

    .line 64
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_9

    :catch_1d
    move-exception p0

    goto :goto_a

    :cond_3
    :goto_9
    if-eqz v6, :cond_6

    .line 67
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1d

    goto :goto_f

    .line 70
    :goto_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :goto_b
    if-eqz v2, :cond_4

    .line 71
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_c

    :catch_1e
    move-exception p1

    goto :goto_d

    :cond_4
    :goto_c
    if-eqz v6, :cond_5

    .line 74
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1e

    goto :goto_e

    .line 77
    :goto_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :cond_5
    :goto_e
    throw p0

    :cond_6
    :goto_f
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, v0}, Lcom/instabug/library/internal/storage/Encryptor;->a(ILjava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/instabug/library/util/FileUtils;->isReproStepFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p0}, Lcom/instabug/library/util/FileUtils;->getPathWithDecryptedFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return v1
.end method

.method public static b(Ljava/lang/String;)Lcom/instabug/library/internal/storage/ProcessedBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/instabug/library/internal/storage/Encryptor;->a(Ljava/io/File;)Lcom/instabug/library/internal/storage/ProcessedBytes;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, v0}, Lcom/instabug/library/internal/storage/Encryptor;->a(ILjava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/instabug/library/util/FileUtils;->isReproStepFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p0}, Lcom/instabug/library/util/FileUtils;->getPathWithEncryptedFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return v1
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/instabug/library/internal/storage/Encryptor;->getCBCIVParamterKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {}, Lcom/instabug/library/internal/storage/Encryptor;->getCBCSecretKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES/ECB/NoPadding"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/PKCS5PADDING"

    .line 3
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v0, "UTF-8"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 7
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static native getCBCIVParamterKey()Ljava/lang/String;
.end method

.method public static native getCBCSecretKey()Ljava/lang/String;
.end method

.method public static native getKey()Ljava/lang/String;
.end method
