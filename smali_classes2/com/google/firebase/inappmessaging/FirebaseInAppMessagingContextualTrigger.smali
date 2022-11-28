.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingContextualTrigger;
.super Ljava/lang/Object;
.source "FirebaseInAppMessagingContextualTrigger.java"


# instance fields
.field private final triggerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingContextualTrigger;->triggerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTriggerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingContextualTrigger;->triggerName:Ljava/lang/String;

    return-object v0
.end method
