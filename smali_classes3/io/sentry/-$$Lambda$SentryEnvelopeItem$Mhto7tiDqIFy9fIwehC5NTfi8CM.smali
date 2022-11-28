.class public final synthetic Lio/sentry/-$$Lambda$SentryEnvelopeItem$Mhto7tiDqIFy9fIwehC5NTfi8CM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lio/sentry/Attachment;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Attachment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$Mhto7tiDqIFy9fIwehC5NTfi8CM;->f$0:Lio/sentry/Attachment;

    iput-wide p2, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$Mhto7tiDqIFy9fIwehC5NTfi8CM;->f$1:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$Mhto7tiDqIFy9fIwehC5NTfi8CM;->f$0:Lio/sentry/Attachment;

    iget-wide v1, p0, Lio/sentry/-$$Lambda$SentryEnvelopeItem$Mhto7tiDqIFy9fIwehC5NTfi8CM;->f$1:J

    invoke-static {v0, v1, v2}, Lio/sentry/SentryEnvelopeItem;->lambda$fromAttachment$9(Lio/sentry/Attachment;J)[B

    move-result-object v0

    return-object v0
.end method
