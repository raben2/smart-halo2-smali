.class Llayout/MainToolbarLayout$2;
.super Ljava/lang/Object;
.source "MainToolbarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/MainToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MainToolbarLayout;


# direct methods
.method constructor <init>(Llayout/MainToolbarLayout;)V
    .locals 0

    .line 123
    iput-object p1, p0, Llayout/MainToolbarLayout$2;->this$0:Llayout/MainToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "map"

    .line 126
    iget-object v0, p0, Llayout/MainToolbarLayout$2;->this$0:Llayout/MainToolbarLayout;

    invoke-static {v0}, Llayout/MainToolbarLayout;->access$100(Llayout/MainToolbarLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Llayout/MainToolbarLayout$2;->this$0:Llayout/MainToolbarLayout;

    invoke-static {p1}, Llayout/MainToolbarLayout;->access$000(Llayout/MainToolbarLayout;)Llayout/MainToolbarLayout$MainToolbarInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Llayout/MainToolbarLayout$2;->this$0:Llayout/MainToolbarLayout;

    invoke-static {p1}, Llayout/MainToolbarLayout;->access$000(Llayout/MainToolbarLayout;)Llayout/MainToolbarLayout$MainToolbarInterface;

    move-result-object p1

    invoke-interface {p1}, Llayout/MainToolbarLayout$MainToolbarInterface;->onClickSearchBar()V

    :cond_0
    return-void
.end method
