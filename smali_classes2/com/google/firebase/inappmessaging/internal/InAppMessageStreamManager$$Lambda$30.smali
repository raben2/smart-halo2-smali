.class final synthetic Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$30;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$30;->arg$1:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)Lio/reactivex/functions/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$30;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$30;-><init>(Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$30;->arg$1:Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->processCampaignFetch(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V

    return-void
.end method
