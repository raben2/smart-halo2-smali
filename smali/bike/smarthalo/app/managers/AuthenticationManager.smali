.class public Lbike/smarthalo/app/managers/AuthenticationManager;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/AuthenticationContract;


# static fields
.field private static final ACCESS_TOKEN_ENCRYPTION_KEY_ALIAS:Ljava/lang/String; = "ACCESS_TOKEN_ENCRYPTION_KEY_ALIAS"

.field private static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "ACCESS_TOKEN_KEY_PLAIN"

.field private static final ACCESS_TOKEN_KEY_OLD:Ljava/lang/String; = "ACCESS_TOKEN_KEY"

.field private static final REFRESH_TOKEN_ENCRYPTION_KEY_ALIAS:Ljava/lang/String; = "REFRESH_TOKEN_ENCRYPTION_KEY_ALIAS"

.field private static final REFRESH_TOKEN_KEY:Ljava/lang/String; = "REFRESH_TOKEN_KEY_PLAIN"

.field private static final REFRESH_TOKEN_KEY_OLD:Ljava/lang/String; = "REFRESH_TOKEN_KEY"


# instance fields
.field private accessTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private authenticationApi:Lbike/smarthalo/app/api/AuthenticationApi;

.field private consumerToken:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

.field private gson:Lcom/google/gson/Gson;

.field private jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

.field private keyManager:Lbike/smarthalo/app/managers/KeyManager;

.field private refreshTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

.field private retrofit:Lretrofit2/Retrofit;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/google/gson/Gson;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->retrofit:Lretrofit2/Retrofit;

    .line 91
    iput-object p4, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 92
    invoke-virtual {p4}, Lbike/smarthalo/app/managers/KeyManager;->getAppConsumerToken()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->consumerToken:Ljava/lang/String;

    .line 93
    const-class p4, Lbike/smarthalo/app/api/AuthenticationApi;

    invoke-virtual {p2, p4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/api/AuthenticationApi;

    iput-object p2, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->authenticationApi:Lbike/smarthalo/app/api/AuthenticationApi;

    .line 94
    iput-object p3, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->gson:Lcom/google/gson/Gson;

    .line 95
    iput-object p5, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 96
    iput-object p6, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 97
    iput-object p7, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    .line 98
    iput-object p8, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 100
    const-class p2, Lbike/smarthalo/app/managers/AuthenticationManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "ACCESS_TOKEN_ENCRYPTION_KEY_ALIAS"

    .line 102
    invoke-static {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->buildManager(Landroid/content/Context;Ljava/lang/String;)Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    move-result-object p2

    iput-object p2, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->accessTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    const-string p2, "REFRESH_TOKEN_ENCRYPTION_KEY_ALIAS"

    .line 103
    invoke-static {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyManager;->buildManager(Landroid/content/Context;Ljava/lang/String;)Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->refreshTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    return-void
.end method

.method private deleteRealm()V
    .locals 1

    .line 323
    sget-object v0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;->INSTANCE:Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$UQAeHC_tyCFZHGrH8Dk1zwfqOg4;

    invoke-static {v0}, Lbike/smarthalo/app/managers/SafeRealmHelper;->getSafeRealm(Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;)V

    return-void
.end method

.method private getDecodedJWT(Ljava/lang/String;)Lbike/smarthalo/app/api/responses/DecodedJWT;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "\\."

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 195
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 196
    iget-object v2, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->gson:Lcom/google/gson/Gson;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-class v1, Lbike/smarthalo/app/api/responses/DecodedJWT;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/api/responses/DecodedJWT;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 198
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    .line 199
    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getOldEncryptedToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "ACCESS_TOKEN_KEY"

    .line 180
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->accessTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    .line 181
    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->refreshTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    .line 182
    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 186
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private getRefreshToken()Ljava/lang/String;
    .locals 3

    .line 166
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->shouldMigrateTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "REFRESH_TOKEN_KEY"

    .line 167
    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->getOldEncryptedToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "REFRESH_TOKEN_KEY_PLAIN"

    const/4 v2, 0x0

    .line 168
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private handleTokenRefreshError(ILjava/lang/String;Ljava/lang/String;)Lbike/smarthalo/app/models/TokenRefreshState;
    .locals 2

    const/16 v0, 0x193

    if-ne p1, v0, :cond_0

    .line 274
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forbidden Refresh Token : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error message : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Forbidden Access Token"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 278
    sget-object p1, Lbike/smarthalo/app/models/TokenRefreshState;->ForbiddenTokenError:Lbike/smarthalo/app/models/TokenRefreshState;

    return-object p1

    .line 280
    :cond_0
    sget-object p1, Lbike/smarthalo/app/models/TokenRefreshState;->NetworkError:Lbike/smarthalo/app/models/TokenRefreshState;

    return-object p1
.end method

.method private initializeEncryptionKeys()V
    .locals 1

    .line 108
    :try_start_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->accessTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;->initializeKeys()V

    .line 109
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->refreshTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;->initializeKeys()V
    :try_end_0
    .catch Lbike/smarthalo/app/managers/storageManagers/EncryptionKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->logout()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$deleteRealm$6(Lio/realm/Realm;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 325
    invoke-virtual {p0}, Lio/realm/Realm;->deleteAll()V

    .line 326
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V

    return-void
.end method

.method public static synthetic lambda$launchTokenRefreshFlow$0(Lbike/smarthalo/app/managers/AuthenticationManager;Ljava/lang/String;Lretrofit2/Response;)Lbike/smarthalo/app/models/TokenRefreshState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/api/responses/GenericApiResponse;

    invoke-virtual {v0}, Lbike/smarthalo/app/api/responses/GenericApiResponse;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/responses/GenericApiResponse;

    invoke-virtual {p1}, Lbike/smarthalo/app/api/responses/GenericApiResponse;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/responses/RefreshTokenResponse;

    .line 249
    iget-object p2, p1, Lbike/smarthalo/app/api/responses/RefreshTokenResponse;->accessToken:Ljava/lang/String;

    invoke-direct {p0, p2}, Lbike/smarthalo/app/managers/AuthenticationManager;->saveAccessToken(Ljava/lang/String;)V

    .line 250
    iget-object p1, p1, Lbike/smarthalo/app/api/responses/RefreshTokenResponse;->refreshToken:Ljava/lang/String;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/AuthenticationManager;->saveRefreshToken(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/AuthenticationManager;->setFirebaseUserProperties(Lbike/smarthalo/app/models/SHUser;)V

    .line 253
    sget-object p1, Lbike/smarthalo/app/models/TokenRefreshState;->Success:Lbike/smarthalo/app/models/TokenRefreshState;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/api/responses/BasicApiError;

    iget-object v3, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->gson:Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lbike/smarthalo/app/helpers/GsonHelper;->deserializeHttpResponseBody(Lokhttp3/ResponseBody;Ljava/lang/Class;Lcom/google/gson/Gson;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/api/responses/BasicApiError;

    if-eqz v1, :cond_1

    .line 259
    iget-object v0, v1, Lbike/smarthalo/app/api/responses/BasicApiError;->error:Lbike/smarthalo/app/api/responses/BasicApiError$ErrorDetails;

    iget-object v0, v0, Lbike/smarthalo/app/api/responses/BasicApiError$ErrorDetails;->message:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    invoke-direct {p0, p2, p1, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->handleTokenRefreshError(ILjava/lang/String;Ljava/lang/String;)Lbike/smarthalo/app/models/TokenRefreshState;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$launchTokenRefreshFlow$1(Lbike/smarthalo/app/managers/AuthenticationManager;Ljava/lang/String;Ljava/lang/Throwable;)Lbike/smarthalo/app/models/TokenRefreshState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    check-cast p2, Lretrofit2/HttpException;

    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p2}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-virtual {p2}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lbike/smarthalo/app/managers/AuthenticationManager;->handleTokenRefreshError(ILjava/lang/String;Ljava/lang/String;)Lbike/smarthalo/app/models/TokenRefreshState;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/app/models/TokenRefreshState;->NetworkError:Lbike/smarthalo/app/models/TokenRefreshState;

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$login$2(Lbike/smarthalo/app/managers/AuthenticationManager;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/api/responses/UserResponse;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->onSuccessfulAuthentication(Lbike/smarthalo/app/api/responses/UserResponse;)V

    .line 299
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/responses/UserResponse;

    iget-object p1, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 301
    :cond_0
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p1
.end method

.method static synthetic lambda$login$3(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$signUp$4(Lbike/smarthalo/app/managers/AuthenticationManager;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/api/responses/UserResponse;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->onSuccessfulAuthentication(Lbike/smarthalo/app/api/responses/UserResponse;)V

    .line 314
    new-instance v0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/api/responses/UserResponse;

    iget-object p1, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 316
    :cond_0
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p1
.end method

.method static synthetic lambda$signUp$5(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 319
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p0}, Lbike/smarthalo/app/models/GenericResponse;-><init>()V

    return-object p0
.end method

.method private onSuccessfulAuthentication(Lbike/smarthalo/app/api/responses/UserResponse;)V
    .locals 3

    .line 211
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->initializeEncryptionKeys()V

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v1, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 213
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isSmartHaloEConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v1, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->createB2BSpeedometerGoal(I)V

    .line 217
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/app/api/responses/UserResponse;->access_jwt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->saveAccessToken(Ljava/lang/String;)V

    .line 218
    iget-object v0, p1, Lbike/smarthalo/app/api/responses/UserResponse;->refresh_jwt:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->saveRefreshToken(Ljava/lang/String;)V

    .line 219
    iget-object v0, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->setFirebaseUserProperties(Lbike/smarthalo/app/models/SHUser;)V

    .line 221
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    iget-object v1, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lbike/smarthalo/app/api/responses/UserResponse;->user:Lbike/smarthalo/app/models/SHUser;

    .line 225
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result p1

    .line 221
    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    iget-object p1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/16 v0, 0x8

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v0, v1, v2}, Lbike/smarthalo/app/services/JobServiceCreator;->createPeriodicJobService(IJ)V

    return-void
.end method

.method private saveAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->shouldMigrateTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN_KEY"

    .line 139
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN_KEY_PLAIN"

    .line 145
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Access token save error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private saveRefreshToken(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->shouldMigrateTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REFRESH_TOKEN_KEY"

    .line 121
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REFRESH_TOKEN_KEY_PLAIN"

    .line 127
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Refresh token save error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private setFirebaseUserProperties(Lbike/smarthalo/app/models/SHUser;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "deviceModel"

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/analytics/AnalyticsUserProperties;->getDeviceModelUserProperty(Lbike/smarthalo/sdk/models/DeviceModel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendUserPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "audience"

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$authLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendUserPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "cloudUserId"

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendUserPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private shouldMigrateTokens()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ACCESS_TOKEN_KEY"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "REFRESH_TOKEN_KEY"

    .line 155
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldRefreshToken(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/AuthenticationManager;->getDecodedJWT(Ljava/lang/String;)Lbike/smarthalo/app/api/responses/DecodedJWT;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lbike/smarthalo/app/api/responses/DecodedJWT;->shouldTokenBeRefreshed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->shouldMigrateTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .line 160
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->shouldMigrateTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACCESS_TOKEN_KEY"

    .line 161
    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/AuthenticationManager;->getOldEncryptedToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ACCESS_TOKEN_KEY_PLAIN"

    const/4 v2, 0x0

    .line 162
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public launchTokenRefreshFlow()Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/TokenRefreshState;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0, v1}, Lbike/smarthalo/app/managers/AuthenticationManager;->shouldRefreshToken(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NoNeedToRefresh:Lbike/smarthalo/app/models/TokenRefreshState;

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 242
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->authenticationApi:Lbike/smarthalo/app/api/AuthenticationApi;

    iget-object v2, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->consumerToken:Ljava/lang/String;

    new-instance v3, Lbike/smarthalo/app/api/requests/GenericApiPayload;

    new-instance v4, Lbike/smarthalo/app/api/requests/RefreshTokenRequest;

    invoke-direct {v4, v0}, Lbike/smarthalo/app/api/requests/RefreshTokenRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lbike/smarthalo/app/api/requests/GenericApiPayload;-><init>(Ljava/lang/Object;)V

    .line 243
    invoke-interface {v1, v2, v3}, Lbike/smarthalo/app/api/AuthenticationApi;->refreshToken(Ljava/lang/String;Lbike/smarthalo/app/api/requests/GenericApiPayload;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DtoFdWFiWYlTzUgy0S-BoAhrMQA;

    invoke-direct {v2, p0, v0}, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DtoFdWFiWYlTzUgy0S-BoAhrMQA;-><init>(Lbike/smarthalo/app/managers/AuthenticationManager;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;

    invoke-direct {v2, p0, v0}, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$pBWDh2PW8EDU3lTRVSAOGQazyz4;-><init>(Lbike/smarthalo/app/managers/AuthenticationManager;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 235
    :cond_2
    :goto_0
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NullTokensError:Lbike/smarthalo/app/models/TokenRefreshState;

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->authenticationApi:Lbike/smarthalo/app/api/AuthenticationApi;

    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->consumerToken:Ljava/lang/String;

    new-instance v2, Lbike/smarthalo/app/api/requests/UserLoginRequest;

    invoke-direct {v2, p1, p2}, Lbike/smarthalo/app/api/requests/UserLoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/api/AuthenticationApi;->login(Ljava/lang/String;Lbike/smarthalo/app/api/requests/UserLoginRequest;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DT36868MS4pMzyU6hyCM7gQEYgU;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DT36868MS4pMzyU6hyCM7gQEYgU;-><init>(Lbike/smarthalo/app/managers/AuthenticationManager;)V

    .line 296
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$lw3MrYnAkrIAHjxzpYKVrTxQoe8;->INSTANCE:Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$lw3MrYnAkrIAHjxzpYKVrTxQoe8;

    .line 304
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public logout()V
    .locals 2

    .line 331
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestLogout(Landroid/content/Context;)V

    .line 332
    const-class v0, Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->stopServiceIfRunning(Ljava/lang/Class;Landroid/content/Context;)V

    .line 333
    const-class v0, Lbike/smarthalo/app/services/SHCentralService;

    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->stopServiceIfRunning(Ljava/lang/Class;Landroid/content/Context;)V

    .line 334
    const-class v0, Lbike/smarthalo/sdk/SHDeviceService;

    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->stopServiceIfRunning(Ljava/lang/Class;Landroid/content/Context;)V

    .line 335
    const-class v0, Lbike/smarthalo/app/services/SHLocationService;

    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->stopServiceIfRunning(Ljava/lang/Class;Landroid/content/Context;)V

    .line 336
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/JobServiceCreator;->cancelAllJobs()V

    .line 339
    :try_start_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->refreshTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->refreshTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;->removeKeys()V

    .line 342
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->accessTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->accessTokenEncryptionKeyManager:Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/EncryptionKeyContract;->removeKeys()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    :cond_1
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    invoke-direct {p0}, Lbike/smarthalo/app/managers/AuthenticationManager;->deleteRealm()V

    .line 356
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHServiceHelper;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHRoutingHelper;->launchOnboardingActivity(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public signUp(Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;
    .locals 2
    .param p1    # Lbike/smarthalo/app/api/requests/SHUserSignupRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/api/requests/SHUserSignupRequest;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/SHUser;",
            ">;>;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->authenticationApi:Lbike/smarthalo/app/api/AuthenticationApi;

    iget-object v1, p0, Lbike/smarthalo/app/managers/AuthenticationManager;->consumerToken:Ljava/lang/String;

    .line 310
    invoke-interface {v0, v1, p1}, Lbike/smarthalo/app/api/AuthenticationApi;->signup(Ljava/lang/String;Lbike/smarthalo/app/api/requests/SHUserSignupRequest;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$9qK-bScv3BXjrPdCSpty6jAAm0I;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$9qK-bScv3BXjrPdCSpty6jAAm0I;-><init>(Lbike/smarthalo/app/managers/AuthenticationManager;)V

    .line 311
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$g6-olpXnUTZ8WLRDf91oYIULGqU;->INSTANCE:Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$g6-olpXnUTZ8WLRDf91oYIULGqU;

    .line 319
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
