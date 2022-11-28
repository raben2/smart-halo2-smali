.class public final Lio/sentry/protocol/OperatingSystem;
.super Ljava/lang/Object;
.source "OperatingSystem.java"

# interfaces
.implements Lio/sentry/IUnknownPropertiesConsumer;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE:Ljava/lang/String; = "os"


# instance fields
.field private build:Ljava/lang/String;

.field private kernelVersion:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rawDescription:Ljava/lang/String;

.field private rooted:Ljava/lang/Boolean;

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

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptUnknownProperties(Ljava/util/Map;)V
    .locals 1
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

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    return-void
.end method

.method public clone()Lio/sentry/protocol/OperatingSystem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/OperatingSystem;

    .line 109
    iget-object v1, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    invoke-static {v1}, Lio/sentry/util/CollectionUtils;->shallowCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lio/sentry/protocol/OperatingSystem;->clone()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    return-object v0
.end method

.method public getBuild()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelVersion()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawDescription()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    return-object v0
.end method

.method getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 90
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isRooted()Ljava/lang/Boolean;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->build:Ljava/lang/String;

    return-void
.end method

.method public setKernelVersion(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->kernelVersion:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->name:Ljava/lang/String;

    return-void
.end method

.method public setRawDescription(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->rawDescription:Ljava/lang/String;

    return-void
.end method

.method public setRooted(Ljava/lang/Boolean;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->rooted:Ljava/lang/Boolean;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lio/sentry/protocol/OperatingSystem;->version:Ljava/lang/String;

    return-void
.end method
