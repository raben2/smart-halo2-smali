.class public final Lio/sentry/SentryEnvelopeItemHeader;
.super Ljava/lang/Object;
.source "SentryEnvelopeItemHeader.java"


# annotations
.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getLength:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final length:I

.field private final type:Lio/sentry/SentryItemType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/SentryItemType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/sentry/SentryItemType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type is required"

    .line 46
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryItemType;

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItemHeader;->type:Lio/sentry/SentryItemType;

    .line 47
    iput-object p3, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    .line 48
    iput p2, p0, Lio/sentry/SentryEnvelopeItemHeader;->length:I

    .line 49
    iput-object p4, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lio/sentry/SentryEnvelopeItemHeader;->getLength:Ljava/util/concurrent/Callable;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryItemType;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/sentry/SentryItemType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryItemType;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type is required"

    .line 58
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryItemType;

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItemHeader;->type:Lio/sentry/SentryItemType;

    .line 59
    iput-object p3, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lio/sentry/SentryEnvelopeItemHeader;->length:I

    .line 61
    iput-object p4, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lio/sentry/SentryEnvelopeItemHeader;->getLength:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 23
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->getLength:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0

    .line 30
    :cond_0
    iget v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->length:I

    return v0
.end method

.method public getType()Lio/sentry/SentryItemType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lio/sentry/SentryEnvelopeItemHeader;->type:Lio/sentry/SentryItemType;

    return-object v0
.end method
