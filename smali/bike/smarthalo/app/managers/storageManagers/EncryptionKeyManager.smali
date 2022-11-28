.class public Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;
.super Ljava/lang/Object;
.source "EncryptionKeyManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AES_MODE_LESS_THAN_M:Ljava/lang/String; = "AES/ECB/PKCS7Padding"

.field private static final AES_MODE_M_OR_GREATER:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final ANDROID_KEY_STORE_NAME:Ljava/lang/String; = "AndroidKeyStore"

.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final CIPHER_PROVIDER_NAME_ENCRYPTION_DECRYPTION_AES:Ljava/lang/String; = "BC"

.field private static final CIPHER_PROVIDER_NAME_ENCRYPTION_DECRYPTION_RSA:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final ENCRYPTED_KEY_NAME:Ljava/lang/String; = "ENCRYPTED_KEY_NAME"

.field private static final INITIALIZATION_VECTOR_STRING_KEY:Ljava/lang/String; = "INITIALIZATION_VECTOR_STRING_KEY"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RSA_ALGORITHM_NAME:Ljava/lang/String; = "RSA"

.field private static final RSA_MODE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final SHARED_PREFERENCE_SUFFIX:Ljava/lang/String; = "shared-preferences-"


# instance fields
.field private final context:Landroid/content/Context;

.field private keyAlias:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 82
    const-class v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared-preferences-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static buildManager(Landroid/content/Context;Ljava/lang/String;)Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;
    .locals 1

    .line 95
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private checkKeysValidity()Lbike/smarthalo/app/models/EncryptionKeyValidity;
    .locals 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 127
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 130
    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Uninitialized:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-object v0

    .line 133
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    instance-of v1, v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v1, :cond_1

    .line 137
    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-object v0

    .line 138
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_2

    instance-of v0, v0, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getSecretKeyFromSharedPreferences()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-object v0

    .line 150
    :cond_2
    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 157
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    return-object v0
.end method

.method private generateKeys()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 165
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->generateKeysMarshmallow()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->generateKeysLollipop()V

    :goto_0
    return-void
.end method

.method private generateKeysLollipop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x1e

    .line 175
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 176
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v3, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    .line 177
    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 179
    invoke-virtual {v2, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v0

    const-string v1, "RSA"

    const-string v2, "AndroidKeyStore"

    .line 183
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 185
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 187
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->saveEncryptedKey()V

    return-void
.end method

.method private generateKeysMarshmallow()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "AES"

    const-string v1, "AndroidKeyStore"

    .line 230
    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 232
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 241
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    return-void
.end method

.method private getInitializationVector()[B
    .locals 3

    .line 379
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "INITIALIZATION_VECTOR_STRING_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 380
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method private getSecretKeyAPILessThanM()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getSecretKeyFromSharedPreferences()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 218
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 219
    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->rsaDecryptKey([B)[B

    move-result-object v0

    .line 220
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 216
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Saved key missing from shared preferences"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSecretKeyAPIMorGreater()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 325
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 327
    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private getSecretKeyFromSharedPreferences()Ljava/lang/String;
    .locals 3

    .line 224
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPTED_KEY_NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSavedSharedPreferences()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 398
    sget-object v1, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Cleared secret key shared preferences `%s`"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rsaDecryptKey([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 347
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 350
    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    .line 352
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 354
    new-instance v0, Ljavax/crypto/CipherInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 356
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-byte v1, v1

    .line 359
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 363
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 364
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private rsaEncryptKey([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 331
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 334
    iget-object v2, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    .line 335
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 336
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 338
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 339
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, v0, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 340
    invoke-virtual {v2, p1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 341
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 343
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private saveEncryptedKey()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ENCRYPTED_KEY_NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    .line 193
    new-array v0, v0, [B

    .line 194
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 195
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 197
    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->rsaEncryptKey([B)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 198
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ENCRYPTED_KEY_NAME"

    .line 201
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Saved keys successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Saved keys unsuccessfully"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not save keys"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private saveInitializationVector([B)V
    .locals 2

    const/4 v0, 0x0

    .line 370
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "INITIALIZATION_VECTOR_STRING_KEY"

    .line 374
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 375
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->checkKeysValidity()Lbike/smarthalo/app/models/EncryptionKeyValidity;

    move-result-object v0

    .line 286
    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    .line 292
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x2

    if-lt v1, v2, :cond_1

    .line 295
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getInitializationVector()[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v2, "AES/GCM/NoPadding"

    .line 300
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 301
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getSecretKeyAPIMorGreater()Ljava/security/Key;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v6, 0x80

    invoke-direct {v5, v6, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_1
    const-string v1, "AES/ECB/PKCS7Padding"

    const-string v2, "BC"

    .line 303
    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 304
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getSecretKeyAPILessThanM()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 307
    :goto_0
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 308
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 320
    :catch_0
    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;

    invoke-direct {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;-><init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V

    throw p1

    .line 287
    :cond_2
    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;

    invoke-direct {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;-><init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V

    throw p1
.end method

.method public encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->checkKeysValidity()Lbike/smarthalo/app/models/EncryptionKeyValidity;

    move-result-object v0

    .line 248
    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Valid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    if-ne v0, v1, :cond_1

    .line 254
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "AES/GCM/NoPadding"

    .line 255
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 256
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getSecretKeyAPIMorGreater()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 258
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->saveInitializationVector([B)V

    goto :goto_0

    :cond_0
    const-string v0, "AES/ECB/PKCS7Padding"

    const-string v1, "BC"

    .line 260
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 261
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->getSecretKeyAPILessThanM()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    const-string v1, "UTF-8"

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 265
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    goto :goto_1

    :catch_6
    move-exception p1

    goto :goto_1

    :catch_7
    move-exception p1

    goto :goto_1

    :catch_8
    move-exception p1

    goto :goto_1

    :catch_9
    move-exception p1

    .line 276
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 278
    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;

    sget-object v0, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    invoke-direct {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;-><init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V

    throw p1

    .line 249
    :cond_1
    new-instance p1, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;

    invoke-direct {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;-><init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V

    throw p1
.end method

.method public initializeKeys()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->checkKeysValidity()Lbike/smarthalo/app/models/EncryptionKeyValidity;

    move-result-object v0

    .line 102
    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Uninitialized:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->generateKeys()V

    goto :goto_0

    .line 104
    :cond_0
    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->removeKeys()V

    .line 107
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;

    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    invoke-direct {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;-><init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V

    throw v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    .line 118
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;

    sget-object v1, Lbike/smarthalo/app/models/EncryptionKeyValidity;->Invalid:Lbike/smarthalo/app/models/EncryptionKeyValidity;

    invoke-direct {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException;-><init>(Lbike/smarthalo/app/models/EncryptionKeyValidity;)V

    throw v0
.end method

.method public removeKeys()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 385
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 386
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 387
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->removeKeys(Ljava/security/KeyStore;)V

    return-void
.end method

.method protected removeKeys(Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->keyAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->removeSavedSharedPreferences()V

    return-void
.end method
