.class public final synthetic Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;

    invoke-direct {v0}, Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;-><init>()V

    sput-object v0, Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;->INSTANCE:Lbike/smarthalo/app/-$$Lambda$MainApplication$moyUc2qMTuR1H4r0-RdHG5rjfzU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 0

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p1}, Lbike/smarthalo/app/MainApplication;->lambda$onCreate$1(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
