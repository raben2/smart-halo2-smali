.class public Llayout/ConnectionStatusLayout;
.super Landroid/widget/RelativeLayout;
.source "ConnectionStatusLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;
    }
.end annotation


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private connectedImageView:Landroid/widget/ImageView;

.field private connectedNotificationImageView:Landroid/widget/ImageView;

.field private connectionSubscription:Lio/reactivex/disposables/Disposable;

.field private disconnectedImageView:Landroid/widget/ImageView;

.field private disconnectedNotificationImageView:Landroid/widget/ImageView;

.field private hasNotification:Z

.field private isConnected:Z

.field private notificationSubscription:Lio/reactivex/disposables/Disposable;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private shouldDisplayNotification:Z

.field private subscriber:Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->shouldDisplayNotification:Z

    .line 42
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->isConnected:Z

    .line 43
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    .line 192
    new-instance v1, Llayout/ConnectionStatusLayout$2;

    invoke-direct {v1, p0}, Llayout/ConnectionStatusLayout$2;-><init>(Llayout/ConnectionStatusLayout;)V

    iput-object v1, p0, Llayout/ConnectionStatusLayout;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, v1, v0}, Llayout/ConnectionStatusLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->shouldDisplayNotification:Z

    .line 42
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->isConnected:Z

    .line 43
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    .line 192
    new-instance v1, Llayout/ConnectionStatusLayout$2;

    invoke-direct {v1, p0}, Llayout/ConnectionStatusLayout$2;-><init>(Llayout/ConnectionStatusLayout;)V

    iput-object v1, p0, Llayout/ConnectionStatusLayout;->onClickListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-direct {p0, p1, p2, v0}, Llayout/ConnectionStatusLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->shouldDisplayNotification:Z

    .line 42
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->isConnected:Z

    .line 43
    iput-boolean v0, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    .line 192
    new-instance v0, Llayout/ConnectionStatusLayout$2;

    invoke-direct {v0, p0}, Llayout/ConnectionStatusLayout$2;-><init>(Llayout/ConnectionStatusLayout;)V

    iput-object v0, p0, Llayout/ConnectionStatusLayout;->onClickListener:Landroid/view/View$OnClickListener;

    .line 64
    invoke-direct {p0, p1, p2, p3}, Llayout/ConnectionStatusLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Llayout/ConnectionStatusLayout;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 32
    iget-object p0, p0, Llayout/ConnectionStatusLayout;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Llayout/ConnectionStatusLayout;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 32
    iput-object p1, p0, Llayout/ConnectionStatusLayout;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Llayout/ConnectionStatusLayout;Lio/reactivex/Flowable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Llayout/ConnectionStatusLayout;->subscribeToIsDeviceConnected(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$200(Llayout/ConnectionStatusLayout;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Llayout/ConnectionStatusLayout;->shouldDisplayNotification:Z

    return p0
.end method

.method static synthetic access$300(Llayout/ConnectionStatusLayout;Lio/reactivex/Flowable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Llayout/ConnectionStatusLayout;->subscribeToHasNotification(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$400(Llayout/ConnectionStatusLayout;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->clearConnectionSubscription()V

    return-void
.end method

.method static synthetic access$500(Llayout/ConnectionStatusLayout;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->clearNotificationSubscription()V

    return-void
.end method

.method static synthetic access$600(Llayout/ConnectionStatusLayout;)Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;
    .locals 0

    .line 32
    iget-object p0, p0, Llayout/ConnectionStatusLayout;->subscriber:Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;

    return-object p0
.end method

.method private clearConnectionSubscription()V
    .locals 1

    .line 120
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Llayout/ConnectionStatusLayout;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearNotificationSubscription()V
    .locals 1

    .line 127
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->notificationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Llayout/ConnectionStatusLayout;->notificationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const p3, 0x7f0d003a

    .line 68
    invoke-static {p1, p3, p0}, Llayout/ConnectionStatusLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    sget-object p3, Lbike/smarthalo/app/R$styleable;->ConnectionStatusLayout:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 73
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Llayout/ConnectionStatusLayout;->shouldDisplayNotification:Z

    .line 75
    invoke-direct {p0, p1}, Llayout/ConnectionStatusLayout;->setUpCentralServiceConnection(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic lambda$subscribeToHasNotification$2(Llayout/ConnectionStatusLayout;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    return-void
.end method

.method public static synthetic lambda$subscribeToHasNotification$3(Llayout/ConnectionStatusLayout;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->updateConnectionIcon()V

    return-void
.end method

.method public static synthetic lambda$subscribeToIsDeviceConnected$0(Llayout/ConnectionStatusLayout;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Llayout/ConnectionStatusLayout;->isConnected:Z

    return-void
.end method

.method public static synthetic lambda$subscribeToIsDeviceConnected$1(Llayout/ConnectionStatusLayout;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->updateConnectionIcon()V

    return-void
.end method

.method private setUpCentralServiceConnection(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    new-instance v0, Llayout/ConnectionStatusLayout$1;

    invoke-direct {v0, p0}, Llayout/ConnectionStatusLayout$1;-><init>(Llayout/ConnectionStatusLayout;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Llayout/ConnectionStatusLayout;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private subscribeToHasNotification(Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->clearNotificationSubscription()V

    .line 157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 158
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 159
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Llayout/-$$Lambda$ConnectionStatusLayout$4T1pgmdhRKJzMIZjiW_mZZmgcn4;

    invoke-direct {v0, p0}, Llayout/-$$Lambda$ConnectionStatusLayout$4T1pgmdhRKJzMIZjiW_mZZmgcn4;-><init>(Llayout/ConnectionStatusLayout;)V

    .line 160
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Llayout/-$$Lambda$ConnectionStatusLayout$7xtimkprcKWDwQf29pXC7WVEb6E;

    invoke-direct {v0, p0}, Llayout/-$$Lambda$ConnectionStatusLayout$7xtimkprcKWDwQf29pXC7WVEb6E;-><init>(Llayout/ConnectionStatusLayout;)V

    .line 161
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Llayout/ConnectionStatusLayout;->notificationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private subscribeToIsDeviceConnected(Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->clearConnectionSubscription()V

    .line 147
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 148
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 149
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Llayout/-$$Lambda$ConnectionStatusLayout$BSgkOVWyZmL39SepIx0cECOjkN4;

    invoke-direct {v0, p0}, Llayout/-$$Lambda$ConnectionStatusLayout$BSgkOVWyZmL39SepIx0cECOjkN4;-><init>(Llayout/ConnectionStatusLayout;)V

    .line 150
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Llayout/-$$Lambda$ConnectionStatusLayout$zADI9drDJewwSOaPCcD8lQLK-oM;

    invoke-direct {v0, p0}, Llayout/-$$Lambda$ConnectionStatusLayout$zADI9drDJewwSOaPCcD8lQLK-oM;-><init>(Llayout/ConnectionStatusLayout;)V

    .line 151
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Llayout/ConnectionStatusLayout;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateLayout()V
    .locals 0

    .line 206
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->requestLayout()V

    .line 207
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public handleFinishInflate()V
    .locals 1

    .line 134
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Llayout/ConnectionStatusLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0105

    .line 136
    invoke-virtual {p0, v0}, Llayout/ConnectionStatusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/ConnectionStatusLayout;->connectedImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0147

    .line 137
    invoke-virtual {p0, v0}, Llayout/ConnectionStatusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/ConnectionStatusLayout;->disconnectedImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0107

    .line 138
    invoke-virtual {p0, v0}, Llayout/ConnectionStatusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/ConnectionStatusLayout;->connectedNotificationImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0148

    .line 139
    invoke-virtual {p0, v0}, Llayout/ConnectionStatusLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/ConnectionStatusLayout;->disconnectedNotificationImageView:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->updateLayoutParams()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 114
    iget-object p1, p0, Llayout/ConnectionStatusLayout;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 115
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->clearConnectionSubscription()V

    .line 116
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->clearNotificationSubscription()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 110
    iget-object p1, p0, Llayout/ConnectionStatusLayout;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 106
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->handleFinishInflate()V

    return-void
.end method

.method public setSubscriber(Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;)V
    .locals 0

    .line 202
    iput-object p1, p0, Llayout/ConnectionStatusLayout;->subscriber:Llayout/ConnectionStatusLayout$ConnectionStatusViewInterface;

    return-void
.end method

.method public updateConnectionIcon()V
    .locals 4

    .line 165
    iget-boolean v0, p0, Llayout/ConnectionStatusLayout;->isConnected:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->disconnectedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->disconnectedNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->connectedImageView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->connectedNotificationImageView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 171
    :cond_2
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->connectedImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->connectedNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->disconnectedImageView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Llayout/ConnectionStatusLayout;->disconnectedNotificationImageView:Landroid/widget/ImageView;

    iget-boolean v3, p0, Llayout/ConnectionStatusLayout;->hasNotification:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    :goto_4
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->updateLayout()V

    return-void
.end method

.method public updateLayoutParams()V
    .locals 4

    .line 181
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 182
    invoke-virtual {p0}, Llayout/ConnectionStatusLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0, v0, v2, v1, v2}, Llayout/ConnectionStatusLayout;->setPadding(IIII)V

    .line 185
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 187
    invoke-virtual {p0, v0}, Llayout/ConnectionStatusLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-direct {p0}, Llayout/ConnectionStatusLayout;->updateLayout()V

    return-void
.end method
