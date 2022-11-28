.class public final synthetic Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeSendCallback;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;

    invoke-direct {v0}, Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;-><init>()V

    sput-object v0, Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;->INSTANCE:Lbike/smarthalo/app/-$$Lambda$MainApplication$3FbbaUW8mTQcfo-bSQ1n5VDQOyk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/SentryEvent;
    .locals 0

    invoke-static {p1, p2}, Lbike/smarthalo/app/MainApplication;->lambda$null$0(Lio/sentry/SentryEvent;Ljava/lang/Object;)Lio/sentry/SentryEvent;

    move-result-object p1

    return-object p1
.end method
