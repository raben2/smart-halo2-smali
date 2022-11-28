.class public Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;
.super Ljava/lang/Object;
.source "SyncLogKeyProvider.java"

# interfaces
.implements Lcom/instabug/library/network/service/synclogs/a;


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

.method static native getNativeMatchingEmailPrefix()Ljava/lang/String;
.end method

.method static native getNativeMatchingEmailSuffix()Ljava/lang/String;
.end method

.method static native getNativeMatchingUuidPrefix()Ljava/lang/String;
.end method

.method static native getNativeMatchingUuidSuffix()Ljava/lang/String;
.end method

.method static native getNativeSyncingEmailPrefix()Ljava/lang/String;
.end method

.method static native getNativeSyncingEmailSuffix()Ljava/lang/String;
.end method

.method static native getNativeSyncingUuidPrefix()Ljava/lang/String;
.end method

.method static native getNativeSyncingUuidSuffix()Ljava/lang/String;
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeSyncingEmailSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeSyncingEmailPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeMatchingEmailSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeSyncingUuidPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeMatchingUuidSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeMatchingUuidPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeMatchingEmailPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/network/service/synclogs/SyncLogKeyProvider;->getNativeSyncingUuidSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
