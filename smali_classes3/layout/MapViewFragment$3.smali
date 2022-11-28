.class Llayout/MapViewFragment$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MapViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/MapViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MapViewFragment;


# direct methods
.method constructor <init>(Llayout/MapViewFragment;)V
    .locals 0

    .line 390
    iput-object p1, p0, Llayout/MapViewFragment$3;->this$0:Llayout/MapViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 393
    iget-object p1, p0, Llayout/MapViewFragment$3;->this$0:Llayout/MapViewFragment;

    invoke-static {p1}, Llayout/MapViewFragment;->access$200(Llayout/MapViewFragment;)Llayout/ViewContracts/MapConsumerContract;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    iget-object p1, p0, Llayout/MapViewFragment$3;->this$0:Llayout/MapViewFragment;

    invoke-static {p1}, Llayout/MapViewFragment;->access$200(Llayout/MapViewFragment;)Llayout/ViewContracts/MapConsumerContract;

    move-result-object p1

    invoke-interface {p1}, Llayout/ViewContracts/MapConsumerContract;->onClickMapOverlay()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
