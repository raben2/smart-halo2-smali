.class public final Lio/sentry/protocol/Mechanism;
.super Ljava/lang/Object;
.source "Mechanism.java"

# interfaces
.implements Lio/sentry/IUnknownPropertiesConsumer;


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private handled:Ljava/lang/Boolean;

.field private helpLink:Ljava/lang/String;

.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic:Ljava/lang/Boolean;

.field private final transient thread:Ljava/lang/Thread;

.field private type:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0}, Lio/sentry/protocol/Mechanism;-><init>(Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->thread:Ljava/lang/Thread;

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

    .line 136
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->unknown:Ljava/util/Map;

    return-void
.end method

.method public getData()Ljava/util/Map;
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

    .line 114
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpLink()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->helpLink:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/util/Map;
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

    .line 106
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->meta:Ljava/util/Map;

    return-object v0
.end method

.method public getSynthetic()Ljava/lang/Boolean;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->synthetic:Ljava/lang/Boolean;

    return-object v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isHandled()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/sentry/protocol/Mechanism;->handled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setData(Ljava/util/Map;)V
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

    .line 118
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->data:Ljava/util/Map;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->description:Ljava/lang/String;

    return-void
.end method

.method public setHandled(Ljava/lang/Boolean;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->handled:Ljava/lang/Boolean;

    return-void
.end method

.method public setHelpLink(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->helpLink:Ljava/lang/String;

    return-void
.end method

.method public setMeta(Ljava/util/Map;)V
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

    .line 110
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->meta:Ljava/util/Map;

    return-void
.end method

.method public setSynthetic(Ljava/lang/Boolean;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->synthetic:Ljava/lang/Boolean;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lio/sentry/protocol/Mechanism;->type:Ljava/lang/String;

    return-void
.end method
