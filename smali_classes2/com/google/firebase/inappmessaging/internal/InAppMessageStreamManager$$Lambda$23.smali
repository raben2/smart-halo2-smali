.class final synthetic Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager.java"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field private static final instance:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;->instance:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lio/reactivex/functions/BiFunction;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;->instance:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$23;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->create(Ljava/lang/String;Lcom/google/firebase/installations/InstallationTokenResult;)Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;

    move-result-object p1

    return-object p1
.end method
