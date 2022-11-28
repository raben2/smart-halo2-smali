.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
.super Ljava/lang/Object;
.source "FirebaseInAppMessaging.java"


# annotations
.annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
.end annotation


# instance fields
.field private areMessagesSuppressed:Z

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

.field private final displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

.field private fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final inAppMessageStreamManager:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field private final programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;)V
    .locals 0
    .param p2    # Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->inAppMessageStreamManager:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    .line 74
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    .line 75
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    .line 76
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    .line 78
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    .line 79
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    .line 82
    invoke-interface {p4}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging$$Lambda$1;->lambdaFactory$()Lcom/google/android/gms/tasks/OnSuccessListener;

    move-result-object p3

    .line 83
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 88
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->createFirebaseInAppMessageStream()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;)Lio/reactivex/functions/Consumer;

    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->triggerInAppMessage(Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting InAppMessaging runtime with Installation ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private triggerInAppMessage(Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    .line 368
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getTriggeringEvent()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;->generateDisplayCallback(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    move-result-object p1

    .line 365
    invoke-interface {v0, v1, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;->displayMessage(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 237
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    return-void
.end method

.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 284
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 246
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V

    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 296
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 309
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 228
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 272
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public areMessagesSuppressed()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    return v0
.end method

.method public clearDisplayListener()V
    .locals 1

    const-string v0, "Removing display event component"

    .line 213
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    return-void
.end method

.method public isAutomaticDataCollectionEnabled()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public removeAllListeners()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeAllListeners()V

    return-void
.end method

.method public removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 330
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    return-void
.end method

.method public removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 340
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    return-void
.end method

.method public removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->setAutomaticDataCollectionEnabled(Z)V

    return-void
.end method

.method public setMessageDisplayComponent(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Setting display event component"

    .line 203
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    return-void
.end method

.method public setMessagesSuppressed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    return-void
.end method

.method public triggerEvent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 359
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;->triggerEvent(Ljava/lang/String;)V

    return-void
.end method
