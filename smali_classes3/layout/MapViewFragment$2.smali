.class Llayout/MapViewFragment$2;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 383
    iput-object p1, p0, Llayout/MapViewFragment$2;->this$0:Llayout/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 386
    iget-object p1, p0, Llayout/MapViewFragment$2;->this$0:Llayout/MapViewFragment;

    invoke-static {p1}, Llayout/MapViewFragment;->access$100(Llayout/MapViewFragment;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
