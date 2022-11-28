.class public Lcom/instabug/library/Instabug$Builder;
.super Ljava/lang/Object;
.source "Instabug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/Instabug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "URF_UNREAD_FIELD"
    }
.end annotation


# instance fields
.field private anrDefaultState:Lcom/instabug/library/Feature$State;

.field private application:Landroid/app/Application;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private applicationContext:Landroid/content/Context;

.field private applicationToken:Ljava/lang/String;

.field private bugPromptOptionEnable:Z

.field private chatPromptOptionEnable:Z

.field private commentFieldRequired:Z

.field private consoleLogState:Lcom/instabug/library/Feature$State;

.field private crashReportingState:Lcom/instabug/library/Feature$State;

.field private deprecatedMethodsToBeLogedAfterBuild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private emailFieldRequired:Z

.field private emailFieldVisibility:Z

.field private feedbackPromptOptionEnable:Z

.field private floatingButtonOffsetFromTop:I

.field private inAppMessagingState:Lcom/instabug/library/Feature$State;

.field private instabugFloatingButtonEdge:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

.field private instabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

.field private instabugLogState:Lcom/instabug/library/Feature$State;

.field private instabugStatusBarColor:I

.field private introMessageEnabled:Z

.field private isSurveysAutoShowing:Z

.field private pushNotificationState:Lcom/instabug/library/Feature$State;

.field private reproStepsState:Lcom/instabug/library/visualusersteps/State;

.field private shakingThreshold:I

.field private shouldPlaySounds:Z

.field private successDialogEnabled:Z

.field private surveysState:Lcom/instabug/library/Feature$State;

.field private trackingUserStepsState:Lcom/instabug/library/Feature$State;

.field private userDataState:Lcom/instabug/library/Feature$State;

.field private userEventsState:Lcom/instabug/library/Feature$State;

.field private viewHierarchyState:Lcom/instabug/library/Feature$State;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    sget-object v1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/Instabug$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;[Lcom/instabug/library/invocation/InstabugInvocationEvent;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Application;Ljava/lang/String;[Lcom/instabug/library/invocation/InstabugInvocationEvent;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/instabug/library/invocation/InstabugInvocationEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/instabug/library/Instabug$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/instabug/library/invocation/InstabugInvocationEvent;)V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->application:Landroid/app/Application;

    return-void
.end method

.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/instabug/library/invocation/InstabugInvocationEvent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/instabug/library/invocation/InstabugInvocationEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3a3939

    .line 5
    iput v0, p0, Lcom/instabug/library/Instabug$Builder;->instabugStatusBarColor:I

    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    sget-object v2, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->instabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    .line 8
    sget-object v1, Lcom/instabug/library/d;->g:Lcom/instabug/library/Feature$State;

    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->userDataState:Lcom/instabug/library/Feature$State;

    .line 9
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->consoleLogState:Lcom/instabug/library/Feature$State;

    .line 10
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->instabugLogState:Lcom/instabug/library/Feature$State;

    .line 11
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->inAppMessagingState:Lcom/instabug/library/Feature$State;

    .line 12
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->crashReportingState:Lcom/instabug/library/Feature$State;

    .line 13
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->pushNotificationState:Lcom/instabug/library/Feature$State;

    .line 14
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->trackingUserStepsState:Lcom/instabug/library/Feature$State;

    .line 16
    sget-object v1, Lcom/instabug/library/visualusersteps/State;->ENABLED:Lcom/instabug/library/visualusersteps/State;

    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->reproStepsState:Lcom/instabug/library/visualusersteps/State;

    .line 17
    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->viewHierarchyState:Lcom/instabug/library/Feature$State;

    .line 18
    sget-object v1, Lcom/instabug/library/d;->g:Lcom/instabug/library/Feature$State;

    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->surveysState:Lcom/instabug/library/Feature$State;

    .line 19
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->userEventsState:Lcom/instabug/library/Feature$State;

    .line 20
    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->anrDefaultState:Lcom/instabug/library/Feature$State;

    .line 22
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->emailFieldRequired:Z

    .line 23
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->emailFieldVisibility:Z

    .line 24
    iput-boolean v3, p0, Lcom/instabug/library/Instabug$Builder;->commentFieldRequired:Z

    .line 25
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->introMessageEnabled:Z

    .line 26
    iput-boolean v3, p0, Lcom/instabug/library/Instabug$Builder;->shouldPlaySounds:Z

    .line 27
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->successDialogEnabled:Z

    .line 29
    sget-object v1, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->RIGHT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    iput-object v1, p0, Lcom/instabug/library/Instabug$Builder;->instabugFloatingButtonEdge:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    const/16 v1, 0x28a

    .line 32
    iput v1, p0, Lcom/instabug/library/Instabug$Builder;->shakingThreshold:I

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/instabug/library/Instabug$Builder;->floatingButtonOffsetFromTop:I

    .line 34
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->isSurveysAutoShowing:Z

    .line 35
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->chatPromptOptionEnable:Z

    .line 36
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->bugPromptOptionEnable:Z

    .line 37
    iput-boolean v0, p0, Lcom/instabug/library/Instabug$Builder;->feedbackPromptOptionEnable:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/Instabug$Builder;->deprecatedMethodsToBeLogedAfterBuild:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->applicationContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/instabug/library/Instabug$Builder;->instabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    .line 71
    iput-object p2, p0, Lcom/instabug/library/Instabug$Builder;->applicationToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/instabug/library/Instabug$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/Instabug$Builder;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/instabug/library/Instabug$Builder;)Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/Instabug$Builder;->instabugFloatingButtonEdge:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    return-object p0
.end method

.method static synthetic access$400(Lcom/instabug/library/Instabug$Builder;)[Lcom/instabug/library/invocation/InstabugInvocationEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/Instabug$Builder;->instabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/instabug/library/Instabug$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/Instabug$Builder;->floatingButtonOffsetFromTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/instabug/library/Instabug$Builder;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/Instabug$Builder;->logFeaturesStates(Ljava/lang/Boolean;)V

    return-void
.end method

.method private logDeprecatedApis()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder;->deprecatedMethodsToBeLogedAfterBuild:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-static {}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->log(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private logFeaturesStates(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User data feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->userDataState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Console log feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->consoleLogState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instabug logs feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->instabugLogState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crash reporting feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->crashReportingState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-App messaging feature state is set to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->inAppMessagingState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push notification feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->pushNotificationState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking user steps feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->trackingUserStepsState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repro steps feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->reproStepsState:Lcom/instabug/library/visualusersteps/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View hierarchy feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->viewHierarchyState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surveys feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->surveysState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User events feature state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->userEventsState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instabug overall state is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private setFeaturesStates(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->USER_DATA:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->userDataState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->instabugLogState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 4
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->CONSOLE_LOGS:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->consoleLogState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->crashReportingState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 8
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->IN_APP_MESSAGING:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->inAppMessagingState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 10
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->pushNotificationState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 12
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->trackingUserStepsState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 14
    iget-object v0, p0, Lcom/instabug/library/Instabug$Builder;->reproStepsState:Lcom/instabug/library/visualusersteps/State;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->setReproStepsState(Lcom/instabug/library/visualusersteps/State;)V

    .line 15
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->viewHierarchyState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 17
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->SURVEYS:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->surveysState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 18
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->USER_EVENTS:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->userEventsState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 20
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->ANR_REPORTING:Lcom/instabug/library/Feature;

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->anrDefaultState:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 21
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->INSTABUG:Lcom/instabug/library/Feature;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    .line 23
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/instabug/library/Instabug;
    .locals 1

    .line 49
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->cancel()V

    .line 53
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->disable()V

    .line 55
    :cond_1
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-virtual {p0, v0}, Lcom/instabug/library/Instabug$Builder;->build(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/c;

    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instabug/library/c;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/instabug/library/Instabug;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/instabug/library/Instabug;-><init>(Lcom/instabug/library/c;Lcom/instabug/library/Instabug$a;)V

    invoke-static {v1}, Lcom/instabug/library/Instabug;->access$002(Lcom/instabug/library/Instabug;)Lcom/instabug/library/Instabug;

    .line 3
    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/instabug/library/util/InstabugSDKLogger;->initLogger(Landroid/content/Context;)V

    .line 4
    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/library/Instabug$Builder;->setFeaturesStates(Ljava/lang/Boolean;)V

    .line 6
    sget-object v1, Lcom/instabug/library/InstabugState;->BUILDING:Lcom/instabug/library/InstabugState;

    invoke-static {v1}, Lcom/instabug/library/Instabug;->setState(Lcom/instabug/library/InstabugState;)V

    .line 8
    invoke-direct {p0}, Lcom/instabug/library/Instabug$Builder;->logDeprecatedApis()V

    .line 10
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->applicationToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Lcom/instabug/library/user/b;->n()V

    .line 15
    :cond_1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/Instabug$Builder;->applicationToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/instabug/library/settings/SettingsManager;->setAppToken(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/instabug/library/core/plugin/a;->a(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/h;->a(Lcom/instabug/library/settings/SettingsManager;)V

    .line 19
    iget-object v1, p0, Lcom/instabug/library/Instabug$Builder;->application:Landroid/app/Application;

    invoke-static {v1}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->init(Landroid/app/Application;)V

    .line 21
    new-instance v1, Lcom/instabug/library/Instabug$Builder$a;

    const-string v2, "Sdk start thread"

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/instabug/library/Instabug$Builder$a;-><init>(Lcom/instabug/library/Instabug$Builder;Ljava/lang/String;Lcom/instabug/library/c;Z)V

    const/16 p1, 0xa

    .line 45
    invoke-virtual {v1, p1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 46
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 48
    invoke-static {}, Lcom/instabug/library/Instabug;->access$000()Lcom/instabug/library/Instabug;

    move-result-object p1

    return-object p1
.end method

.method public setConsoleLogState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->consoleLogState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public setInAppMessagingState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->inAppMessagingState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public setInstabugLogState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->instabugLogState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public varargs setInvocationEvents([Lcom/instabug/library/invocation/InstabugInvocationEvent;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # [Lcom/instabug/library/invocation/InstabugInvocationEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "instabugInvocationEvent"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/invocation/InstabugInvocationEvent;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-string v3, ","

    .line 4
    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->instabugInvocationEvents:[Lcom/instabug/library/invocation/InstabugInvocationEvent;

    return-object p0
.end method

.method public setReproStepsState(Lcom/instabug/library/visualusersteps/State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/visualusersteps/State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->reproStepsState:Lcom/instabug/library/visualusersteps/State;

    return-object p0
.end method

.method public setTrackingUserStepsState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->trackingUserStepsState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public setUserDataState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->userDataState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public setUserEventsState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->userEventsState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method

.method public setViewHierarchyState(Lcom/instabug/library/Feature$State;)Lcom/instabug/library/Instabug$Builder;
    .locals 4
    .param p1    # Lcom/instabug/library/Feature$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 3
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsage([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    iput-object p1, p0, Lcom/instabug/library/Instabug$Builder;->viewHierarchyState:Lcom/instabug/library/Feature$State;

    return-object p0
.end method
