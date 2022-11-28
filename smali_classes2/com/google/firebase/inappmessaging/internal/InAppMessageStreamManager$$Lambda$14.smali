.class final synthetic Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$14;
.super Ljava/lang/Object;
.source "InAppMessageStreamManager.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final arg$1:Lio/reactivex/MaybeEmitter;


# direct methods
.method private constructor <init>(Lio/reactivex/MaybeEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$14;->arg$1:Lio/reactivex/MaybeEmitter;

    return-void
.end method

.method public static lambdaFactory$(Lio/reactivex/MaybeEmitter;)Lcom/google/android/gms/tasks/OnFailureListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$14;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$14;-><init>(Lio/reactivex/MaybeEmitter;)V

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager$$Lambda$14;->arg$1:Lio/reactivex/MaybeEmitter;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$29(Lio/reactivex/MaybeEmitter;Ljava/lang/Exception;)V

    return-void
.end method
