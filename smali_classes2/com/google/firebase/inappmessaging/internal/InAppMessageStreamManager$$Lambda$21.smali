.class final synthetic Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final arg$1:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Lio/reactivex/functions/Function;

.field private final arg$4:Lio/reactivex/functions/Function;

.field private final arg$5:Lio/reactivex/functions/Function;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$1:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$3:Lio/reactivex/functions/Function;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$4:Lio/reactivex/functions/Function;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$5:Lio/reactivex/functions/Function;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 7

    new-instance v6, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;-><init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;)V

    return-object v6
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$1:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$3:Lio/reactivex/functions/Function;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$4:Lio/reactivex/functions/Function;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$21;->arg$5:Lio/reactivex/functions/Function;

    move-object v5, p1

    check-cast v5, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$createFirebaseInAppMessageStream$14(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Ljava/lang/String;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lio/reactivex/functions/Function;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Lio/reactivex/Maybe;

    move-result-object p1

    return-object p1
.end method
