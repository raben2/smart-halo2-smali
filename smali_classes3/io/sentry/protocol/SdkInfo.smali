.class public final Lio/sentry/protocol/SdkInfo;
.super Ljava/lang/Object;
.source "SdkInfo.java"

# interfaces
.implements Lio/sentry/IUnknownPropertiesConsumer;


# instance fields
.field private sdkName:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private versionMajor:Ljava/lang/Integer;

.field private versionMinor:Ljava/lang/Integer;

.field private versionPatchlevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptUnknownProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
    .end annotation

    .line 61
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->unknown:Ljava/util/Map;

    return-void
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionMajor()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersionMinor()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersionPatchlevel()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public setSdkName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->sdkName:Ljava/lang/String;

    return-void
.end method

.method public setVersionMajor(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionMajor:Ljava/lang/Integer;

    return-void
.end method

.method public setVersionMinor(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionMinor:Ljava/lang/Integer;

    return-void
.end method

.method public setVersionPatchlevel(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lio/sentry/protocol/SdkInfo;->versionPatchlevel:Ljava/lang/Integer;

    return-void
.end method
