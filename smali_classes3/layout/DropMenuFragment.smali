.class abstract Llayout/DropMenuFragment;
.super Landroidx/fragment/app/Fragment;
.source "DropMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/DropMenuFragment$DropMenuInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DropMenuFragment"


# instance fields
.field private animationListener:Landroid/animation/Animator$AnimatorListener;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private halfY:Ljava/lang/Integer;

.field private maxY:Ljava/lang/Integer;

.field private minY:Ljava/lang/Integer;

.field private onTouchContainerListener:Landroid/view/View$OnTouchListener;

.field private shouldClose:Z

.field private subscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llayout/DropMenuFragment$DropMenuInterface;",
            ">;"
        }
    .end annotation
.end field

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Llayout/DropMenuFragment;->minY:Ljava/lang/Integer;

    .line 28
    iput-object v0, p0, Llayout/DropMenuFragment;->halfY:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Llayout/DropMenuFragment;->maxY:Ljava/lang/Integer;

    .line 31
    iput-boolean v0, p0, Llayout/DropMenuFragment;->shouldClose:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    .line 63
    new-instance v0, Llayout/DropMenuFragment$1;

    invoke-direct {v0, p0}, Llayout/DropMenuFragment$1;-><init>(Llayout/DropMenuFragment;)V

    iput-object v0, p0, Llayout/DropMenuFragment;->onTouchContainerListener:Landroid/view/View$OnTouchListener;

    .line 103
    new-instance v0, Llayout/DropMenuFragment$2;

    invoke-direct {v0, p0}, Llayout/DropMenuFragment$2;-><init>(Llayout/DropMenuFragment;)V

    iput-object v0, p0, Llayout/DropMenuFragment;->animationListener:Landroid/animation/Animator$AnimatorListener;

    .line 122
    new-instance v0, Llayout/DropMenuFragment$3;

    invoke-direct {v0, p0}, Llayout/DropMenuFragment$3;-><init>(Llayout/DropMenuFragment;)V

    iput-object v0, p0, Llayout/DropMenuFragment;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic access$000(Llayout/DropMenuFragment;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iget-object p0, p0, Llayout/DropMenuFragment;->halfY:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$002(Llayout/DropMenuFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iput-object p1, p0, Llayout/DropMenuFragment;->halfY:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Llayout/DropMenuFragment;)Landroid/view/VelocityTracker;
    .locals 0

    .line 23
    iget-object p0, p0, Llayout/DropMenuFragment;->velocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$102(Llayout/DropMenuFragment;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0

    .line 23
    iput-object p1, p0, Llayout/DropMenuFragment;->velocityTracker:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$200(Llayout/DropMenuFragment;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iget-object p0, p0, Llayout/DropMenuFragment;->minY:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$202(Llayout/DropMenuFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iput-object p1, p0, Llayout/DropMenuFragment;->minY:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Llayout/DropMenuFragment;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Llayout/DropMenuFragment;->shouldClose:Z

    return p0
.end method

.method static synthetic access$302(Llayout/DropMenuFragment;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Llayout/DropMenuFragment;->shouldClose:Z

    return p1
.end method

.method static synthetic access$400(Llayout/DropMenuFragment;)Ljava/lang/Integer;
    .locals 0

    .line 23
    iget-object p0, p0, Llayout/DropMenuFragment;->maxY:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Llayout/DropMenuFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 23
    iget-object p0, p0, Llayout/DropMenuFragment;->animationListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$600(Llayout/DropMenuFragment;)Landroid/view/GestureDetector;
    .locals 0

    .line 23
    iget-object p0, p0, Llayout/DropMenuFragment;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method


# virtual methods
.method protected addSubscriber(Llayout/DropMenuFragment$DropMenuInterface;)V
    .locals 1

    .line 44
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closeSelf()V
    .locals 3

    .line 160
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llayout/DropMenuFragment$DropMenuInterface;

    const/4 v2, 0x0

    .line 162
    invoke-interface {v1, v2}, Llayout/DropMenuFragment$DropMenuInterface;->onDropMenuRequestClose(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Llayout/DropMenuFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005b

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Llayout/DropMenuFragment;->context:Landroid/content/Context;

    iget-object v0, p0, Llayout/DropMenuFragment;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Llayout/DropMenuFragment;->gestureDetector:Landroid/view/GestureDetector;

    .line 58
    iget-object p2, p0, Llayout/DropMenuFragment;->onTouchContainerListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 189
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 170
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llayout/DropMenuFragment$DropMenuInterface;

    .line 172
    invoke-interface {v1}, Llayout/DropMenuFragment$DropMenuInterface;->onDropMenuResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 179
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Llayout/DropMenuFragment;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llayout/DropMenuFragment$DropMenuInterface;

    .line 181
    invoke-interface {v1}, Llayout/DropMenuFragment$DropMenuInterface;->onDropMenuStop()V

    goto :goto_0

    .line 184
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
