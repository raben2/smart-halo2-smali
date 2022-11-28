.class public Lcom/instabug/chat/f/a;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/f/a$o;,
        Lcom/instabug/chat/f/a$n;,
        Lcom/instabug/chat/f/a$m;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/instabug/chat/e/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/instabug/chat/f/a$n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/f/a;->b:Z

    .line 10
    invoke-direct {p0}, Lcom/instabug/chat/f/a;->f()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    return-object p0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/instabug/chat/f/a;->e:Lcom/instabug/chat/e/f;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/instabug/chat/f/a;->c:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/instabug/chat/f/a;->d:Z

    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/instabug/chat/f/a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/f/a$a;-><init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    invoke-static {}, Lcom/instabug/chat/settings/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/instabug/chat/e/f;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v1, Lcom/instabug/chat/R$id;->senderAvatarImageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/ui/custom/CircularImageView;

    .line 123
    new-instance v1, Lcom/instabug/chat/f/a$j;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/instabug/chat/f/a$j;-><init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/library/ui/custom/CircularImageView;Lcom/instabug/chat/e/f;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {p2}, Lcom/instabug/chat/e/f;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lcom/instabug/chat/f/a$k;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/instabug/chat/f/a$k;-><init>(Lcom/instabug/chat/f/a;Lcom/instabug/chat/e/f;Landroid/app/Activity;Lcom/instabug/library/ui/custom/CircularImageView;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/instabug/chat/f/a$o;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    sget v0, Lcom/instabug/chat/R$id;->instabug_in_app_notification:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iput-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    .line 11
    invoke-virtual {p2}, Lcom/instabug/chat/f/a$o;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/instabug/chat/f/a;->a(Z)V

    const-string v0, "layout_inflater"

    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    const-string p1, "Unable to inflate the InAppNotifications view due to null Inflater"

    .line 21
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_1
    sget v1, Lcom/instabug/chat/R$layout;->instabug_lyt_notification:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    const/4 v1, 0x4

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    new-instance v1, Lcom/instabug/chat/f/a$d;

    invoke-direct {v1, p0}, Lcom/instabug/chat/f/a$d;-><init>(Lcom/instabug/chat/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 37
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 41
    invoke-static {p1}, Lcom/instabug/library/util/ScreenUtility;->isLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/instabug/library/util/ScreenUtility;->hasNavBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 49
    invoke-static {v1}, Lcom/instabug/library/util/ScreenUtility;->getNavigationBarWidth(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    .line 53
    invoke-static {v1}, Lcom/instabug/library/util/ScreenUtility;->getNavigationBarWidth(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {v1}, Lcom/instabug/library/util/ScreenUtility;->getNavigationBarWidth(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 61
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v1, Lcom/instabug/chat/f/a$e;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/instabug/chat/f/a$e;-><init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;Landroid/widget/FrameLayout$LayoutParams;Lcom/instabug/chat/f/a$o;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/instabug/chat/f/a$f;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/f/a$f;-><init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/chat/e/f;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/f/a;->b(Landroid/app/Activity;Lcom/instabug/chat/e/f;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/a;Lcom/instabug/library/InstabugColorTheme;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/library/InstabugColorTheme;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/a;Lcom/instabug/library/ui/custom/CircularImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/library/ui/custom/CircularImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Lcom/instabug/library/InstabugColorTheme;)V
    .locals 8

    .line 79
    iget-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v1, Lcom/instabug/chat/R$id;->instabug_notification_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v2, Lcom/instabug/chat/R$id;->replyButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 81
    iget-object v2, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v3, Lcom/instabug/chat/R$id;->dismissButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 82
    iget-object v3, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v4, Lcom/instabug/chat/R$id;->senderNameTextView:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    iget-object v4, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v5, Lcom/instabug/chat/R$id;->senderMessageTextView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, -0x1

    invoke-virtual {v5, v7, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 91
    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne p1, v1, :cond_0

    .line 92
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, -0xb5b5b6

    .line 93
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, -0x757571

    .line 94
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const p1, -0xbdbdbe

    .line 96
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, -0x282829

    .line 98
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const p1, -0x646465

    .line 100
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private a(Lcom/instabug/library/ui/custom/CircularImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, v0}, Lcom/instabug/library/ui/custom/CircularImageView;->setBackgroundResource(I)V

    .line 159
    invoke-virtual {p1, p2}, Lcom/instabug/library/ui/custom/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/instabug/chat/f/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/instabug/library/util/ScreenUtility;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/instabug/chat/f/a$l;

    invoke-direct {v0, p0}, Lcom/instabug/chat/f/a$l;-><init>(Lcom/instabug/chat/f/a;)V

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 176
    iget-object p1, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/instabug/chat/f/a;->b:Z

    .line 179
    iput-boolean p1, p0, Lcom/instabug/chat/f/a;->d:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/chat/f/a;->c:Z

    return p1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/instabug/chat/f/a;->a(Z)V

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/instabug/chat/e/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/e/f;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/chat/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/f/a;->d()V

    return-void
.end method

.method static synthetic b(Lcom/instabug/chat/f/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/chat/f/a;->b:Z

    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/instabug/chat/f/a;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/instabug/chat/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/f/a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/instabug/chat/f/a;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/chat/f/a;->a(Z)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a;->e:Lcom/instabug/chat/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/chat/f/a;->f:Lcom/instabug/chat/f/a$n;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/f/a;->e:Lcom/instabug/chat/e/f;

    iget-object v2, p0, Lcom/instabug/chat/f/a;->f:Lcom/instabug/chat/f/a$n;

    invoke-virtual {p0, v0, v1, v2}, Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/e/f;Lcom/instabug/chat/f/a$n;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instabug/chat/f/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/chat/f/a;->d:Z

    return p0
.end method

.method private e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v1, Lcom/instabug/chat/R$id;->replyButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3
    iget-object v1, p0, Lcom/instabug/chat/f/a;->a:Landroid/view/View;

    sget v2, Lcom/instabug/chat/R$id;->dismissButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    new-instance v2, Lcom/instabug/chat/f/a$h;

    invoke-direct {v2, p0}, Lcom/instabug/chat/f/a$h;-><init>(Lcom/instabug/chat/f/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/instabug/chat/f/a$i;

    invoke-direct {v0, p0}, Lcom/instabug/chat/f/a$i;-><init>(Lcom/instabug/chat/f/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/instabug/chat/f/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/chat/f/a;->b:Z

    return p0
.end method

.method private f()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/f/a$b;

    invoke-direct {v1, p0}, Lcom/instabug/chat/f/a$b;-><init>(Lcom/instabug/chat/f/a;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic f(Lcom/instabug/chat/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/f/a;->a()V

    return-void
.end method

.method static synthetic g(Lcom/instabug/chat/f/a;)Lcom/instabug/chat/f/a$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/f/a;->f:Lcom/instabug/chat/f/a$n;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/chat/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/f/a;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/instabug/chat/e/f;Lcom/instabug/chat/f/a$n;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    iput-object p2, p0, Lcom/instabug/chat/f/a;->e:Lcom/instabug/chat/e/f;

    .line 102
    iput-object p3, p0, Lcom/instabug/chat/f/a;->f:Lcom/instabug/chat/f/a$n;

    .line 104
    new-instance p3, Lcom/instabug/chat/f/a$g;

    invoke-direct {p3, p0, p1, p2}, Lcom/instabug/chat/f/a$g;-><init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/chat/e/f;)V

    .line 118
    invoke-direct {p0, p1, p3}, Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/f/a$o;)V

    .line 119
    invoke-direct {p0}, Lcom/instabug/chat/f/a;->e()V

    return-void
.end method
