.class public final synthetic Lio/sentry/cache/-$$Lambda$EnvelopeCache$7-eIJ0Vkpi1WSS08a1w-qss3p1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lio/sentry/cache/-$$Lambda$EnvelopeCache$7-eIJ0Vkpi1WSS08a1w-qss3p1M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/cache/-$$Lambda$EnvelopeCache$7-eIJ0Vkpi1WSS08a1w-qss3p1M;

    invoke-direct {v0}, Lio/sentry/cache/-$$Lambda$EnvelopeCache$7-eIJ0Vkpi1WSS08a1w-qss3p1M;-><init>()V

    sput-object v0, Lio/sentry/cache/-$$Lambda$EnvelopeCache$7-eIJ0Vkpi1WSS08a1w-qss3p1M;->INSTANCE:Lio/sentry/cache/-$$Lambda$EnvelopeCache$7-eIJ0Vkpi1WSS08a1w-qss3p1M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lio/sentry/cache/EnvelopeCache;->lambda$allEnvelopeFiles$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
