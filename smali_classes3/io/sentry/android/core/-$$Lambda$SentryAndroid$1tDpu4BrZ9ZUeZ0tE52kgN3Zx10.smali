.class public final synthetic Lio/sentry/android/core/-$$Lambda$SentryAndroid$1tDpu4BrZ9ZUeZ0tE52kgN3Zx10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# static fields
.field public static final synthetic INSTANCE:Lio/sentry/android/core/-$$Lambda$SentryAndroid$1tDpu4BrZ9ZUeZ0tE52kgN3Zx10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$1tDpu4BrZ9ZUeZ0tE52kgN3Zx10;

    invoke-direct {v0}, Lio/sentry/android/core/-$$Lambda$SentryAndroid$1tDpu4BrZ9ZUeZ0tE52kgN3Zx10;-><init>()V

    sput-object v0, Lio/sentry/android/core/-$$Lambda$SentryAndroid$1tDpu4BrZ9ZUeZ0tE52kgN3Zx10;->INSTANCE:Lio/sentry/android/core/-$$Lambda$SentryAndroid$1tDpu4BrZ9ZUeZ0tE52kgN3Zx10;

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

    invoke-static {p1}, Lio/sentry/android/core/SentryAndroid;->lambda$init$0(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
