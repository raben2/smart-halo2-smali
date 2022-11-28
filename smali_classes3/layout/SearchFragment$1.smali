.class Llayout/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/SearchFragment;


# direct methods
.method constructor <init>(Llayout/SearchFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Llayout/SearchFragment$1;->this$0:Llayout/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 122
    iget-object p1, p0, Llayout/SearchFragment$1;->this$0:Llayout/SearchFragment;

    invoke-virtual {p1}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHKeyboardHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 123
    iget-object p1, p0, Llayout/SearchFragment$1;->this$0:Llayout/SearchFragment;

    invoke-static {p1}, Llayout/SearchFragment;->access$000(Llayout/SearchFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 124
    iget-object p1, p0, Llayout/SearchFragment$1;->this$0:Llayout/SearchFragment;

    invoke-static {p1}, Llayout/SearchFragment;->access$100(Llayout/SearchFragment;)Llayout/SearchToolbarLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Llayout/SearchToolbarLayout;->setFocus(Z)V

    return p2
.end method
