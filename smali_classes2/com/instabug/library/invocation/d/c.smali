.class public Lcom/instabug/library/invocation/d/c;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/d/c$i;,
        Lcom/instabug/library/invocation/d/c$j;,
        Lcom/instabug/library/invocation/d/c$k;
    }
.end annotation


# instance fields
.field private A:Lcom/instabug/library/invocation/d/c$i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/instabug/library/invocation/d/c$k;

.field private C:Ljava/lang/Runnable;

.field private a:Landroid/widget/FrameLayout$LayoutParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lio/reactivex/disposables/CompositeDisposable;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/instabug/library/l/f/b/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/instabug/library/l/f/b/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/instabug/library/l/f/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/os/Handler;

.field private x:J

.field private y:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>(Lcom/instabug/library/invocation/d/c$k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->b:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->c:I

    .line 4
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->d:I

    .line 5
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->e:I

    .line 6
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->f:I

    .line 7
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->g:I

    .line 8
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->h:I

    .line 11
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    .line 12
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->l:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->n:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->w:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/instabug/library/invocation/d/c$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/invocation/d/c$a;-><init>(Lcom/instabug/library/invocation/d/c;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->C:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c;->B:Lcom/instabug/library/invocation/d/c$k;

    return-void
.end method

.method static synthetic A(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    return-object p0
.end method

.method static synthetic B(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    return-object p0
.end method

.method static synthetic C(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->i()V

    return-void
.end method

.method private static a(Landroid/content/Context;F)F
    .locals 0

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method private static a(Landroid/app/Activity;)I
    .locals 1

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 10
    iget p0, v0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/instabug/library/invocation/d/c;->c:I

    return p1
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c;Landroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method private a(Landroid/app/Activity;II)V
    .locals 4

    .line 13
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/instabug/library/invocation/d/c;->h:I

    .line 16
    invoke-static {p1}, Lcom/instabug/library/invocation/d/c;->a(Landroid/app/Activity;)I

    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->i:F

    .line 20
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->g:I

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$dimen;->instabug_fab_size_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->z:I

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$dimen;->instabug_fab_size_mini:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->j:I

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$dimen;->instabug_fab_actions_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->r:I

    const/4 v2, 0x0

    .line 40
    iput v2, p0, Lcom/instabug/library/invocation/d/c;->s:I

    .line 41
    iget v2, p0, Lcom/instabug/library/invocation/d/c;->z:I

    add-int/2addr v2, v1

    sub-int v1, p2, v2

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->t:I

    .line 42
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->u:I

    sub-int v0, p3, v2

    .line 43
    iput v0, p0, Lcom/instabug/library/invocation/d/c;->v:I

    .line 45
    new-instance v0, Lcom/instabug/library/l/f/a;

    invoke-direct {v0, p1}, Lcom/instabug/library/l/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->q:Lcom/instabug/library/l/f/a;

    .line 46
    sget v1, Lcom/instabug/library/R$string;->instabug_str_video_recording_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    new-instance v0, Lcom/instabug/library/l/f/b/b;

    invoke-direct {v0, p1}, Lcom/instabug/library/l/f/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    .line 50
    invoke-static {}, Lcom/instabug/library/util/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instabug/library/l/f/b/a;->setVisibility(I)V

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->n:Z

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    invoke-virtual {v0}, Lcom/instabug/library/l/f/b/b;->b()V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    invoke-virtual {v0}, Lcom/instabug/library/l/f/b/b;->c()V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    new-instance v1, Lcom/instabug/library/invocation/d/c$c;

    invoke-direct {v1, p0}, Lcom/instabug/library/invocation/d/c$c;-><init>(Lcom/instabug/library/invocation/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lcom/instabug/library/l/f/b/d;

    invoke-direct {v0, p1}, Lcom/instabug/library/l/f/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    .line 79
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getIsStoppableObservable()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/invocation/d/c$d;

    invoke-direct {v2, p0}, Lcom/instabug/library/invocation/d/c$d;-><init>(Lcom/instabug/library/invocation/d/c;)V

    .line 81
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 91
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    new-instance v1, Lcom/instabug/library/invocation/d/c$e;

    invoke-direct {v1, p0}, Lcom/instabug/library/invocation/d/c$e;-><init>(Lcom/instabug/library/invocation/d/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v0, Lcom/instabug/library/invocation/d/c$i;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/invocation/d/c$i;-><init>(Lcom/instabug/library/invocation/d/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    .line 107
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_3

    .line 108
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p0, Lcom/instabug/library/invocation/d/c;->z:I

    const/16 v0, 0x33

    invoke-direct {p2, p3, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object p2, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget-object p3, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    invoke-virtual {p3, p2}, Lcom/instabug/library/invocation/d/c$i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    sget-object p2, Lcom/instabug/library/invocation/d/c$h;->a:[I

    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/instabug/library/invocation/InvocationManager;->getCurrentInvocationSettings()Lcom/instabug/library/invocation/InvocationSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/instabug/library/invocation/InvocationSettings;->getVideoRecordingButtonPosition()Lcom/instabug/library/invocation/util/InstabugVideoRecordingButtonPosition;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    .line 127
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    iget p3, p0, Lcom/instabug/library/invocation/d/c;->t:I

    iget v0, p0, Lcom/instabug/library/invocation/d/c;->v:I

    invoke-virtual {p2, p3, v0}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    goto :goto_1

    .line 128
    :pswitch_0
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    iget p3, p0, Lcom/instabug/library/invocation/d/c;->t:I

    iget v0, p0, Lcom/instabug/library/invocation/d/c;->u:I

    invoke-virtual {p2, p3, v0}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    goto :goto_1

    .line 129
    :pswitch_1
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    iget p3, p0, Lcom/instabug/library/invocation/d/c;->s:I

    iget v0, p0, Lcom/instabug/library/invocation/d/c;->u:I

    invoke-virtual {p2, p3, v0}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    goto :goto_1

    .line 130
    :pswitch_2
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    iget p3, p0, Lcom/instabug/library/invocation/d/c;->s:I

    iget v0, p0, Lcom/instabug/library/invocation/d/c;->v:I

    invoke-virtual {p2, p3, v0}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    goto :goto_1

    .line 131
    :pswitch_3
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    iget p3, p0, Lcom/instabug/library/invocation/d/c;->t:I

    iget v0, p0, Lcom/instabug/library/invocation/d/c;->v:I

    invoke-virtual {p2, p3, v0}, Lcom/instabug/library/invocation/d/c$i;->a(II)V

    goto :goto_1

    .line 149
    :cond_3
    iget v0, p0, Lcom/instabug/library/invocation/d/c;->c:I

    mul-int v0, v0, p2

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 150
    iget v1, p0, Lcom/instabug/library/invocation/d/c;->d:I

    mul-int v1, v1, p3

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 154
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/invocation/d/c;->c:I

    .line 155
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/instabug/library/invocation/d/c;->d:I

    .line 158
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/instabug/library/invocation/d/c;->c:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, v2

    .line 159
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 160
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p3, v0

    .line 161
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 163
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    invoke-virtual {p2, v1}, Lcom/instabug/library/invocation/d/c$i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    invoke-static {p2}, Lcom/instabug/library/invocation/d/c$i;->a(Lcom/instabug/library/invocation/d/c$i;)V

    .line 169
    :goto_1
    iget-boolean p2, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    if-nez p2, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->m()V

    .line 173
    :cond_4
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->l()V

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 3

    .line 179
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->g()V

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/instabug/library/invocation/d/c;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->e:I

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/instabug/library/invocation/d/c;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/instabug/library/invocation/d/c;->f:I

    .line 185
    iget v1, p0, Lcom/instabug/library/invocation/d/c;->e:I

    invoke-direct {p0, v0, v1, p1}, Lcom/instabug/library/invocation/d/c;->a(Landroid/app/Activity;II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c;Landroid/content/res/Configuration;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/instabug/library/invocation/d/c;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private a(FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    mul-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    mul-float p1, p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c;FF)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/invocation/d/c;->a(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/instabug/library/invocation/d/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/library/invocation/d/c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/library/invocation/d/c;->d:I

    return p1
.end method

.method static synthetic b(Lcom/instabug/library/invocation/d/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/invocation/d/c;->x:J

    return-wide v0
.end method

.method static synthetic b(Lcom/instabug/library/invocation/d/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/invocation/d/c;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/instabug/library/invocation/d/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->C:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->h()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->l:Z

    return-void
.end method

.method static synthetic e(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->g()V

    return-void
.end method

.method static synthetic f(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->q:Lcom/instabug/library/l/f/a;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/instabug/library/invocation/d/c;->s:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/instabug/library/invocation/d/c;->t:I

    sub-int/2addr v0, v2

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/instabug/library/invocation/d/c;->u:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/instabug/library/invocation/d/c;->v:I

    sub-int/2addr v0, v2

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    :cond_1
    return-void

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->k()V

    .line 11
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->l:Z

    return-void
.end method

.method static synthetic g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-object p0
.end method

.method private g()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->i()V

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->j()V

    return-void
.end method

.method static synthetic h(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->e:I

    return p0
.end method

.method private h()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->f:I

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/instabug/library/invocation/d/c;->e:I

    .line 6
    iget v2, p0, Lcom/instabug/library/invocation/d/c;->f:I

    invoke-direct {p0, v0, v1, v2}, Lcom/instabug/library/invocation/d/c;->a(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_0
    const-string v0, "ScreenRecordingFab"

    const-string v1, "current activity equal null"

    .line 8
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->z:I

    return p0
.end method

.method private i()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->m:Z

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->q:Lcom/instabug/library/l/f/a;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->c:I

    return p0
.end method

.method private k()V
    .locals 6

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/instabug/library/invocation/d/c;->j:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 6
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/instabug/library/invocation/d/c;->z:I

    iget v4, p0, Lcom/instabug/library/invocation/d/c;->j:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 8
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_0
    const/4 v1, 0x0

    .line 14
    iget-object v2, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_1

    .line 15
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iget-object v2, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/instabug/library/invocation/d/c;->z:I

    iget v5, p0, Lcom/instabug/library/invocation/d/c;->j:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 18
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 23
    :cond_1
    iget v2, p0, Lcom/instabug/library/invocation/d/c;->j:I

    iget v3, p0, Lcom/instabug/library/invocation/d/c;->r:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 28
    iget-object v5, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_4

    .line 29
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-le v5, v4, :cond_2

    add-int/2addr v2, v3

    sub-int/2addr v5, v2

    sub-int v2, v5, v2

    goto :goto_0

    .line 34
    :cond_2
    iget v4, p0, Lcom/instabug/library/invocation/d/c;->z:I

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 38
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 40
    :cond_3
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 42
    :cond_4
    iget-object v2, p0, Lcom/instabug/library/invocation/d/c;->o:Lcom/instabug/library/l/f/b/b;

    if-eqz v2, :cond_5

    .line 43
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->p:Lcom/instabug/library/l/f/b/d;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method static synthetic l(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->t:I

    return p0
.end method

.method private l()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instabug/library/l/f/b/c$b;->RECORDING:Lcom/instabug/library/l/f/b/c$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instabug/library/l/f/b/c$b;->STOPPED:Lcom/instabug/library/l/f/b/c$b;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Lcom/instabug/library/l/f/b/c;->setRecordingState(Lcom/instabug/library/l/f/b/c$b;)V

    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->s:I

    return p0
.end method

.method private m()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->a:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/instabug/library/invocation/d/c;->m:Z

    if-nez v1, :cond_1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/instabug/library/invocation/d/c;->s:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->m:Z

    .line 4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->q:Lcom/instabug/library/l/f/a;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->q:Lcom/instabug/library/l/f/a;

    new-instance v2, Lcom/instabug/library/invocation/d/c$g;

    invoke-direct {v2, p0, v0}, Lcom/instabug/library/invocation/d/c$g;-><init>(Lcom/instabug/library/invocation/d/c;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->q:Lcom/instabug/library/l/f/a;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->d:I

    return p0
.end method

.method private n()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;->getInstance()Lcom/instabug/library/core/eventbus/CurrentActivityLifeCycleEventBus;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/invocation/d/c$f;

    invoke-direct {v2, p0}, Lcom/instabug/library/invocation/d/c$f;-><init>(Lcom/instabug/library/invocation/d/c;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic o(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->f:I

    return p0
.end method

.method private o()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/instabug/library/core/eventbus/a;->getInstance()Lcom/instabug/library/core/eventbus/a;

    move-result-object v1

    new-instance v2, Lcom/instabug/library/invocation/d/c$b;

    invoke-direct {v2, p0}, Lcom/instabug/library/invocation/d/c$b;-><init>(Lcom/instabug/library/invocation/d/c;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method static synthetic p(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->v:I

    return p0
.end method

.method private p()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->l:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->e()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->f()V

    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->u:I

    return p0
.end method

.method static synthetic r(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->h:I

    return p0
.end method

.method static synthetic s(Lcom/instabug/library/invocation/d/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->g:I

    return p0
.end method

.method static synthetic t(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/invocation/d/c$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->B:Lcom/instabug/library/invocation/d/c$k;

    return-object p0
.end method

.method static synthetic u(Lcom/instabug/library/invocation/d/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/library/invocation/d/c;->i:F

    return p0
.end method

.method static synthetic v(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->k()V

    return-void
.end method

.method static synthetic w(Lcom/instabug/library/invocation/d/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/library/invocation/d/c;->l:Z

    return p0
.end method

.method static synthetic x(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->e()V

    return-void
.end method

.method static synthetic y(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->j()V

    return-void
.end method

.method static synthetic z(Lcom/instabug/library/invocation/d/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/invocation/d/c;->w:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->n()V

    .line 12
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->o()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/invocation/d/c;->d()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/library/invocation/d/c;->x:J

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/instabug/library/invocation/d/c;->n:Z

    .line 4
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->l:Z

    .line 5
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->i()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->p()V

    .line 2
    iget-boolean p1, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "00:00"

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/l/f/b/c;->a(Ljava/lang/String;Z)V

    .line 7
    :cond_0
    iput-boolean v0, p0, Lcom/instabug/library/invocation/d/c;->k:Z

    .line 8
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c;->B:Lcom/instabug/library/invocation/d/c$k;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/instabug/library/invocation/d/c$k;->start()V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c;->A:Lcom/instabug/library/invocation/d/c$i;

    if-eqz p1, :cond_2

    .line 12
    sget-object v0, Lcom/instabug/library/l/f/b/c$b;->RECORDING:Lcom/instabug/library/l/f/b/c$b;

    invoke-virtual {p1, v0}, Lcom/instabug/library/l/f/b/c;->setRecordingState(Lcom/instabug/library/l/f/b/c$b;)V

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/instabug/library/invocation/d/c;->j()V

    return-void
.end method
