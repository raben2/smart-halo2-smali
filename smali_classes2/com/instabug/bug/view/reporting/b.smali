.class public abstract Lcom/instabug/bug/view/reporting/b;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "BaseReportingFragment.java"

# interfaces
.implements Lcom/instabug/bug/view/a$d;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/bug/view/reporting/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED",
        "ERADICATE_FIELD_NOT_NULLABLE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/view/reporting/b$s;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/bug/view/reporting/d;",
        ">;",
        "Lcom/instabug/bug/view/a$d;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/bug/view/reporting/e;"
    }
.end annotation


# static fields
.field private static z:I = -0x1


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroidx/recyclerview/widget/RecyclerView;

.field f:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Landroid/app/ProgressDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/instabug/bug/view/a;

.field private l:Lcom/instabug/bug/view/reporting/b$s;

.field private m:Lcom/instabug/bug/view/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:Z

.field private s:J

.field private t:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/os/Handler;

.field private v:Landroid/view/ViewStub;

.field private w:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Landroid/text/TextWatcher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    .line 30
    iput-boolean v0, p0, Lcom/instabug/bug/view/reporting/b;->q:Z

    .line 31
    iput-boolean v0, p0, Lcom/instabug/bug/view/reporting/b;->r:Z

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/instabug/bug/view/reporting/b;->s:J

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->u:Landroid/os/Handler;

    .line 42
    new-instance v0, Lcom/instabug/bug/view/reporting/b$j;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/b$j;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic A(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/bug/view/reporting/b$s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->l:Lcom/instabug/bug/view/reporting/b$s;

    return-object p0
.end method

.method private A()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_ADD_ATTACHMENT_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_add_attachment:I

    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic B(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/bug/view/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->m:Lcom/instabug/bug/view/b;

    return-object p0
.end method

.method private B()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_REPRO_STEPS_DISCLAIMER_BODY:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->IBGReproStepsDisclaimerBody:I

    .line 3
    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic C(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private C()Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_REPRO_STEPS_DISCLAIMER_LINK:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->IBGReproStepsDisclaimerLink:I

    .line 3
    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic D(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private D()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private E()V
    .locals 5

    .line 2
    sget v0, Lcom/instabug/bug/R$id;->instabug_attachment_bottom_sheet:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/instabug/bug/R$id;->instabug_add_attachment_label:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    sget v1, Lcom/instabug/bug/R$id;->instabug_add_attachment_icon:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    sget v2, Lcom/instabug/bug/R$id;->arrow_handler:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 11
    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 15
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v2, v4}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 16
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    :cond_2
    sget v0, Lcom/instabug/bug/R$id;->ib_bottomsheet_arrow_layout:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    sget v0, Lcom/instabug/bug/R$id;->ib_bottomsheet_arrow_layout:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 21
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    .line 24
    :cond_4
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->J()V

    .line 26
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    .line 27
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_5
    iget v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    .line 30
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v2, Lcom/instabug/bug/view/reporting/b$m;

    invoke-direct {v2, p0}, Lcom/instabug/bug/view/reporting/b$m;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    goto :goto_0

    .line 62
    :cond_6
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v2, Lcom/instabug/bug/view/reporting/b$n;

    invoke-direct {v2, p0}, Lcom/instabug/bug/view/reporting/b$n;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    sget v2, Lcom/instabug/bug/view/reporting/b;->z:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    const/4 v2, 0x3

    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 79
    sget v0, Lcom/instabug/bug/view/reporting/b;->z:I

    const/high16 v2, 0x43340000    # 180.0f

    if-ne v0, v1, :cond_8

    .line 80
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->y()V

    .line 81
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 82
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 84
    :cond_8
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->z()V

    .line 85
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 88
    :goto_1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->r()V

    .line 90
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/OrientationUtils;->isInLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->y()V

    .line 93
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 94
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 97
    :cond_9
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->D()V

    return-void
.end method

.method static synthetic F(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private F()V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/bug/view/reporting/b$h;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/b$h;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic G(Lcom/instabug/bug/view/reporting/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    return p0
.end method

.method private G()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method private H()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->I()V

    :goto_1
    return-void
.end method

.method private I()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p0}, Lcom/instabug/bug/view/reporting/f;->a(Landroid/media/projection/MediaProjectionManager;Lcom/instabug/bug/view/reporting/b;)V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowScreenRecording()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    .line 3
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_0
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    sget v2, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_video_icon:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/instabug/bug/R$attr;->ibg_bug_add_attachment_icon_color:I

    invoke-static {v0, v3}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, v1}, Lcom/instabug/bug/view/reporting/b;->d(I)V

    .line 15
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_video_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_video_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_2
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_videorecording_separator:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_videorecording_separator:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_3
    :goto_0
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowTakeExtraScreenshot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    .line 23
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_4
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 27
    sget v2, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_screenshot_icon:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 29
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    .line 30
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/instabug/bug/R$attr;->ibg_bug_add_attachment_icon_color:I

    invoke-static {v0, v3}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 34
    :cond_5
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 35
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :cond_6
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_screenshot_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 37
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_screenshot_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_7
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_screenshot_separator:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 39
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_screenshot_separator:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_8
    :goto_1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowAttachImageFromGallery()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    iget v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    .line 44
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 45
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_9
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    sget v1, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_photo_library_icon:I

    invoke-virtual {p0, v1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 51
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/instabug/bug/R$attr;->ibg_bug_add_attachment_icon_color:I

    invoke-static {v2, v3}, Lcom/instabug/library/util/AttrResolver;->resolveAttributeColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    .line 53
    :cond_a
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 55
    :cond_b
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 56
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_c
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_photo_library_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 58
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_photo_library_icon:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_2
    return-void
.end method

.method private K()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v0, Lcom/instabug/bug/R$string;->ib_alert_phone_number_msg:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_ok:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/instabug/bug/view/reporting/b$b;

    invoke-direct {v6, p0}, Lcom/instabug/bug/view/reporting/b$b;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_alert_title_max_attachments:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_alert_message_max_attachments:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_ok:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v1 .. v7}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/bug/j/b;->c()Lcom/instabug/bug/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/j/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->H()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$string;->instabug_str_video_encoder_busy:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private N()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->y:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/b;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/b;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/instabug/library/model/Attachment;I)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/instabug/bug/view/reporting/b$c;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/instabug/bug/view/reporting/b$c;-><init>(Lcom/instabug/bug/view/reporting/b;ILandroid/view/View;Lcom/instabug/library/model/Attachment;)V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/instabug/library/model/Attachment;Ljava/lang/String;)V
    .locals 4

    .line 26
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/instabug/bug/view/reporting/b;->c(Z)V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 38
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    sget v2, Lcom/instabug/bug/R$id;->instabug_img_attachment:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v2, Lcom/instabug/bug/R$id;->instabug_img_attachment:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 40
    sget v2, Lcom/instabug/bug/R$id;->instabug_img_attachment:I

    .line 41
    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 43
    sget v3, Lcom/instabug/bug/R$id;->instabug_img_attachment:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    :cond_3
    sget v2, Lcom/instabug/bug/R$id;->instabug_img_attachment:I

    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 48
    sget v2, Lcom/instabug/bug/R$id;->instabug_img_attachment:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 51
    sget p1, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 52
    invoke-virtual {p2}, Lcom/instabug/library/model/Attachment;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v1, p2}, Lcom/instabug/bug/view/f/c;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/instabug/bug/view/f/c;

    move-result-object p2

    const-string p3, "annotation"

    .line 53
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "annotation"

    .line 56
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_4
    return-void
.end method

.method private a(Landroid/widget/ImageView;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/b;Landroid/view/View;Lcom/instabug/library/model/Attachment;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/view/View;Lcom/instabug/library/model/Attachment;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/instabug/bug/j/b;->c()Lcom/instabug/bug/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_video_encoder_busy:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_please_wait:I

    .line 9
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/reporting/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/bug/view/reporting/b;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/instabug/bug/view/reporting/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/bug/view/reporting/b;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/instabug/bug/view/reporting/b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/bug/view/reporting/b;->r:Z

    return p1
.end method

.method static synthetic c(I)I
    .locals 0

    .line 2
    sput p0, Lcom/instabug/bug/view/reporting/b;->z:I

    return p0
.end method

.method static synthetic c(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/bug/view/reporting/b;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/bug/view/reporting/b;->h:Z

    return p1
.end method

.method static synthetic d(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowScreenRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget p1, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 5
    sget p1, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    sget p1, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_video_icon:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    sget p1, Lcom/instabug/bug/R$id;->ib_bug_attachment_collapsed_video_icon:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/bug/view/reporting/b;I)Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/instabug/bug/view/reporting/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->y()V

    return-void
.end method

.method static synthetic i(Lcom/instabug/bug/view/reporting/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->z()V

    return-void
.end method

.method static synthetic j(Lcom/instabug/bug/view/reporting/b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic l(Lcom/instabug/bug/view/reporting/b;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic m(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic n(Lcom/instabug/bug/view/reporting/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->L()V

    return-void
.end method

.method static synthetic o(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic p(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic q(Lcom/instabug/bug/view/reporting/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->M()V

    return-void
.end method

.method static synthetic r(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method private r()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image_label:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image_label:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->ADD_IMAGE_FROM_GALLERY:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_pick_media_from_gallery:I

    .line 4
    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot_label:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot_label:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->ADD_EXTRA_SCREENSHOT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_take_screenshot:I

    .line 8
    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video_label:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video_label:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->ADD_VIDEO:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_record_video:I

    .line 12
    invoke-virtual {p0, v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private s()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic s(Lcom/instabug/bug/view/reporting/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/bug/view/reporting/b;->r:Z

    return p0
.end method

.method static synthetic t(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic u(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic v(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic w(Lcom/instabug/bug/view/reporting/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->u:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic x(Lcom/instabug/bug/view/reporting/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic y(Lcom/instabug/bug/view/reporting/b;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private y()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowScreenRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, v0}, Lcom/instabug/bug/view/reporting/b;->d(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 8
    invoke-direct {p0, v0}, Lcom/instabug/bug/view/reporting/b;->d(I)V

    :goto_0
    return-void
.end method

.method static synthetic z(Lcom/instabug/bug/view/reporting/b;)Lcom/instabug/bug/view/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    return-object p0
.end method

.method private z()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->a()Lcom/instabug/bug/settings/AttachmentsTypesParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/AttachmentsTypesParams;->isAllowScreenRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/instabug/bug/view/reporting/b;->d(I)V

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 9
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_3
    invoke-direct {p0, v1}, Lcom/instabug/bug/view/reporting/b;->d(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/text/Spanned;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/instabug/library/model/Attachment;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->s()V

    .line 17
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/SystemServiceUtils;->hideInputMethod(Landroid/app/Activity;)V

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/bug/view/reporting/b;->a(Landroid/view/View;Lcom/instabug/library/model/Attachment;I)V

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->u:Landroid/os/Handler;

    iget-object p2, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/instabug/library/model/Attachment;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v0, p1}, Lcom/instabug/bug/view/a;->b(Lcom/instabug/library/model/Attachment;)V

    .line 148
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 133
    sget v1, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    .line 134
    invoke-static {p1}, Lcom/instabug/library/internal/video/VideoPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/instabug/library/internal/video/VideoPlayerFragment;

    move-result-object p1

    const-string v2, "video_player"

    .line 135
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "play video"

    .line 137
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/b;->l()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/reporting/b;->e(Z)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/b;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/reporting/b;->d(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/Attachment;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->AUDIO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->AUTO_SCREEN_RECORDING_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment;->setVideoEncoded(Z)Lcom/instabug/library/model/Attachment;

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2, v4}, Lcom/instabug/bug/view/a;->a(Lcom/instabug/library/model/Attachment;)V

    .line 75
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->EXTRA_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v4, Lcom/instabug/library/model/Attachment$Type;->GALLERY_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v4}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    :cond_3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 77
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/BaseReport;->setHasVideo(Z)Lcom/instabug/library/model/BaseReport;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p1, -0x1

    const/4 p1, 0x0

    const/4 v1, -0x1

    .line 82
    :goto_1
    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v2}, Lcom/instabug/bug/view/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    .line 83
    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v2}, Lcom/instabug/bug/view/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 84
    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v2}, Lcom/instabug/bug/view/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    .line 85
    invoke-virtual {v2}, Lcom/instabug/bug/view/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->GALLERY_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    .line 86
    invoke-virtual {v2}, Lcom/instabug/bug/view/a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/model/Attachment;

    invoke-virtual {v2}, Lcom/instabug/library/model/Attachment;->getType()Lcom/instabug/library/model/Attachment$Type;

    move-result-object v2

    sget-object v3, Lcom/instabug/library/model/Attachment$Type;->EXTRA_IMAGE:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/Attachment$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v1, p1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 92
    :cond_8
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1, v1}, Lcom/instabug/bug/view/a;->b(I)V

    .line 93
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 96
    sget-object p1, Lcom/instabug/library/Feature;->MULTIPLE_ATTACHMENTS:Lcom/instabug/library/Feature;

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object p1

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p1, v1, :cond_9

    .line 98
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/settings/a;->k()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 99
    sget p1, Lcom/instabug/bug/R$id;->instabug_attachment_bottom_sheet:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 100
    sget p1, Lcom/instabug/bug/R$id;->instabug_attachment_bottom_sheet:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 102
    :cond_9
    sget p1, Lcom/instabug/bug/R$id;->instabug_attachment_bottom_sheet:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 103
    sget p1, Lcom/instabug/bug/R$id;->instabug_attachment_bottom_sheet:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/instabug/bug/view/reporting/b$d;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/b$d;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 128
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->startPostponedEnterTransition()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/text/Spanned;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->v:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    sget v0, Lcom/instabug/bug/R$id;->instabug_edit_text_phone:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    .line 14
    sget v0, Lcom/instabug/bug/R$id;->instabug_image_button_phone_info:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_0
    new-instance v0, Lcom/instabug/bug/view/reporting/b$i;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/b$i;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->x:Landroid/text/TextWatcher;

    .line 37
    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/library/FragmentVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/instabug/bug/R$id;->instabug_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/FragmentVisibilityChangedListener;

    .line 8
    invoke-interface {v0, p1}, Lcom/instabug/library/FragmentVisibilityChangedListener;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 16
    sget v0, Lcom/instabug/bug/R$string;->instabug_str_pick_media_chooser_title:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lcom/instabug/bug/view/reporting/f;->a(Lcom/instabug/bug/view/reporting/b;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 20
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1}, Lcom/instabug/bug/view/a;->c()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1}, Lcom/instabug/bug/view/a;->c()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract e()Lcom/instabug/bug/view/reporting/d;
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1}, Lcom/instabug/bug/view/a;->d()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {p1}, Lcom/instabug/bug/view/a;->d()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/bug/R$layout;->ibg_bug_frgament_reporting_layout:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_INCONSISTENT_SUBCLASS_RETURN_ANNOTATION"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    sget p1, Lcom/instabug/bug/R$id;->ib_bug_scroll_view:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->f:Landroid/widget/ScrollView;

    .line 2
    sget p1, Lcom/instabug/bug/R$id;->instabug_edit_text_message:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    .line 3
    sget p1, Lcom/instabug/bug/R$id;->instabug_edit_text_email:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    .line 4
    sget p1, Lcom/instabug/bug/R$id;->instabug_lyt_attachments_list:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    sget p1, Lcom/instabug/bug/R$id;->instabug_text_view_disclaimer:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->c:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/instabug/bug/R$id;->instabug_text_view_repro_steps_disclaimer:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->d:Landroid/widget/TextView;

    .line 7
    sget p1, Lcom/instabug/bug/R$id;->instabug_viewstub_phone:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->v:Landroid/view/ViewStub;

    .line 9
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->E()V

    .line 11
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    new-instance p1, Lcom/instabug/bug/view/a;

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p0}, Lcom/instabug/bug/view/a;-><init>(Landroid/content/Context;Landroid/graphics/ColorFilter;Lcom/instabug/bug/view/a$d;)V

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    sget-object p2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->EMAIL_FIELD_HINT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_email_hint:I

    .line 16
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p2, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    new-instance p2, Lcom/instabug/bug/view/reporting/b$k;

    invoke-direct {p2, p0}, Lcom/instabug/bug/view/reporting/b$k;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 31
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    new-instance p2, Lcom/instabug/bug/view/reporting/b$l;

    invoke-direct {p2, p0}, Lcom/instabug/bug/view/reporting/b$l;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-ge p1, p2, :cond_1

    .line 44
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    sget p2, Lcom/instabug/bug/R$drawable;->ibg_core_bg_edit_text:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 45
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    sget p2, Lcom/instabug/bug/R$drawable;->ibg_core_bg_edit_text:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 48
    :cond_1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/settings/a;->n()Z

    move-result p1

    if-nez p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/d;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 52
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p2, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p2}, Lcom/instabug/bug/view/reporting/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->g:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 55
    iget-object p2, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_4
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/settings/a;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 60
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/model/BaseReport;->getState()Lcom/instabug/library/model/State;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 62
    invoke-virtual {p1}, Lcom/instabug/library/model/State;->getUserEmail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 64
    iget-object p2, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_5
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_6

    .line 68
    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/d;->f()V

    .line 73
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_7

    .line 74
    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->B()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->C()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/instabug/bug/view/reporting/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/d;->d()V

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 79
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    :cond_8
    return-void
.end method

.method public l()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->k:Lcom/instabug/bug/view/a;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/bug/view/a;->d()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/instabug/bug/view/reporting/d;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 3
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instabug/bug/view/reporting/b$s;

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->l:Lcom/instabug/bug/view/reporting/b$s;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/instabug/bug/view/b;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/instabug/bug/view/b;

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->m:Lcom/instabug/bug/view/b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must implement BaseReportingFragment.Callbacks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instabug/bug/view/reporting/b;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/bug/view/reporting/b;->s:J

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 8
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_screenshot:I

    if-ne p1, v0, :cond_1

    .line 9
    new-instance p1, Lcom/instabug/bug/view/reporting/b$o;

    invoke-direct {p1, p0}, Lcom/instabug/bug/view/reporting/b$o;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 27
    :cond_1
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_gallery_image:I

    if-ne p1, v0, :cond_2

    .line 28
    new-instance p1, Lcom/instabug/bug/view/reporting/b$p;

    invoke-direct {p1, p0}, Lcom/instabug/bug/view/reporting/b$p;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 46
    :cond_2
    sget v0, Lcom/instabug/bug/R$id;->instabug_attach_video:I

    if-ne p1, v0, :cond_3

    .line 47
    new-instance p1, Lcom/instabug/bug/view/reporting/b$q;

    invoke-direct {p1, p0}, Lcom/instabug/bug/view/reporting/b$q;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-direct {p0, p1}, Lcom/instabug/bug/view/reporting/b;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 62
    :cond_3
    sget v0, Lcom/instabug/bug/R$id;->ib_bottomsheet_arrow_layout:I

    const-wide/16 v1, 0xc8

    if-eq p1, v0, :cond_8

    sget v0, Lcom/instabug/bug/R$id;->arrow_handler:I

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 79
    :cond_4
    sget v0, Lcom/instabug/bug/R$id;->instabug_add_attachment:I

    if-ne p1, v0, :cond_6

    .line 80
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    .line 84
    :cond_5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/instabug/bug/view/reporting/b$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/b$a;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 93
    :cond_6
    sget v0, Lcom/instabug/bug/R$id;->instabug_text_view_repro_steps_disclaimer:I

    if-ne p1, v0, :cond_7

    .line 94
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->m:Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_a

    .line 95
    invoke-interface {p1}, Lcom/instabug/bug/view/b;->r()V

    goto :goto_1

    .line 97
    :cond_7
    sget v0, Lcom/instabug/bug/R$id;->instabug_image_button_phone_info:I

    if-ne p1, v0, :cond_a

    .line 98
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->K()V

    goto :goto_1

    .line 99
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    .line 102
    :cond_9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/instabug/bug/view/reporting/b$r;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/reporting/b$r;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->postponeEnterTransition()V

    .line 2
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bug_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/view/reporting/b;->g:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setHasOptionsMenu(Z)V

    .line 6
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->F()V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/b;->e()Lcom/instabug/bug/view/reporting/d;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1
    sget v0, Lcom/instabug/bug/R$menu;->instabug_bug_reporting:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5
    check-cast p2, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p2}, Lcom/instabug/bug/view/reporting/d;->i()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 9
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_next:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/util/LocaleUtils;->isRTL(Ljava/util/Locale;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_next:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Lcom/instabug/bug/R$id;->instabug_bugreporting_next:I

    .line 13
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/instabug/library/util/DrawableUtils;->getRotateDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 14
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 18
    :cond_1
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 19
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_next:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 20
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Lcom/instabug/library/util/LocaleUtils;->isRTL(Ljava/util/Locale;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    sget p2, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    .line 22
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/instabug/library/util/DrawableUtils;->getRotateDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 23
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "ST_WRITE_TO_STATIC_FROM_INSTANCE_METHOD"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->u:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->t:Ljava/lang/Runnable;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->x:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    :cond_1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    const/4 v0, -0x1

    .line 11
    sput v0, Lcom/instabug/bug/view/reporting/b;->z:I

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/instabug/bug/view/reporting/b;->p:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->c:Landroid/widget/TextView;

    .line 4
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    .line 5
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->b:Landroid/widget/EditText;

    .line 6
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->w:Landroid/widget/EditText;

    .line 7
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->v:Landroid/view/ViewStub;

    .line 8
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->d:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->f:Landroid/widget/ScrollView;

    .line 10
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->o:Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->m:Lcom/instabug/bug/view/b;

    .line 3
    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->l:Lcom/instabug/bug/view/reporting/b$s;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instabug/bug/view/reporting/b;->s:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/bug/view/reporting/b;->s:J

    .line 6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/instabug/bug/R$id;->instabug_bugreporting_next:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_1

    .line 7
    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/d;->g()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/instabug/bug/R$id;->instabug_bugreporting_send:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 11
    instance-of v1, v1, Lcom/instabug/bug/view/h/c;

    if-eqz v1, :cond_2

    .line 13
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p1}, Lcom/instabug/bug/view/reporting/d;->g()V

    goto :goto_0

    .line 18
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_5
    :goto_0
    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    array-length v0, p3

    const/16 v1, 0xb1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    if-eq p1, v1, :cond_1

    const/16 v0, 0xf21

    if-eq p1, v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/b;->d()V

    .line 13
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/c;->d()V

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->I()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 23
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->I()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->G()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/reporting/d;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/d;->e()V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->i:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "refresh.attachments"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/d;->k()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/d;->c()V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/reporting/b;->i:Landroid/content/BroadcastReceiver;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/b;->N()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/b;->m:Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p2, :cond_1

    .line 6
    check-cast p2, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {p2}, Lcom/instabug/bug/view/reporting/d;->h()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/reporting/d;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestMediaProjectionPermission()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/instabug/library/internal/video/RequestPermissionActivityLauncher;->start(Landroid/app/Activity;ZZLcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;)V

    :cond_0
    return-void
.end method

.method public showMediaFileSizeAlert()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_bugreport_file_size_limit_warning_title:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_bugreport_file_size_limit_warning_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x32

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 6
    invoke-virtual {p0, v0, v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_ok:I

    .line 8
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/instabug/bug/view/reporting/b$f;

    invoke-direct {v6, p0}, Lcom/instabug/bug/view/reporting/b$f;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 9
    invoke-static/range {v1 .. v7}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showPreparingDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 9
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_dialog_message_preparing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/b;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showVideoLengthAlert()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_video_length_limit_warning_title:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_video_length_limit_warning_message:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/instabug/bug/R$string;->instabug_str_ok:I

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/instabug/bug/view/reporting/b$g;

    invoke-direct {v6, p0}, Lcom/instabug/bug/view/reporting/b$g;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v1 .. v7}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/KeyboardUtils;->hide(Landroid/app/Activity;)V

    .line 5
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instabug/bug/view/reporting/b$e;

    invoke-direct {v1, p0}, Lcom/instabug/bug/view/reporting/b$e;-><init>(Lcom/instabug/bug/view/reporting/b;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public v()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/bug/view/reporting/d;

    invoke-interface {v0}, Lcom/instabug/bug/view/reporting/d;->h()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/instabug/bug/view/reporting/f;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
