.class final synthetic Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# static fields
.field private static final instance:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;->instance:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lio/reactivex/functions/Action;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;->instance:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$36;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$3()V

    return-void
.end method
