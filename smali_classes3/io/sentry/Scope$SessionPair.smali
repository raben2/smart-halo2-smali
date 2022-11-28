.class final Lio/sentry/Scope$SessionPair;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionPair"
.end annotation


# instance fields
.field private final current:Lio/sentry/Session;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previous:Lio/sentry/Session;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/Session;Lio/sentry/Session;)V
    .locals 0
    .param p1    # Lio/sentry/Session;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/Session;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lio/sentry/Scope$SessionPair;->current:Lio/sentry/Session;

    .line 661
    iput-object p2, p0, Lio/sentry/Scope$SessionPair;->previous:Lio/sentry/Session;

    return-void
.end method


# virtual methods
.method public getCurrent()Lio/sentry/Session;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 679
    iget-object v0, p0, Lio/sentry/Scope$SessionPair;->current:Lio/sentry/Session;

    return-object v0
.end method

.method public getPrevious()Lio/sentry/Session;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 670
    iget-object v0, p0, Lio/sentry/Scope$SessionPair;->previous:Lio/sentry/Session;

    return-object v0
.end method
