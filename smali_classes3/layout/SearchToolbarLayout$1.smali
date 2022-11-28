.class Llayout/SearchToolbarLayout$1;
.super Ljava/lang/Object;
.source "SearchToolbarLayout.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/SearchToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/SearchToolbarLayout;


# direct methods
.method constructor <init>(Llayout/SearchToolbarLayout;)V
    .locals 0

    .line 107
    iput-object p1, p0, Llayout/SearchToolbarLayout$1;->this$0:Llayout/SearchToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 116
    iget-object v0, p0, Llayout/SearchToolbarLayout$1;->this$0:Llayout/SearchToolbarLayout;

    invoke-static {v0}, Llayout/SearchToolbarLayout;->access$100(Llayout/SearchToolbarLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    iget-object v0, p0, Llayout/SearchToolbarLayout$1;->this$0:Llayout/SearchToolbarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llayout/SearchToolbarLayout;->access$102(Llayout/SearchToolbarLayout;Z)Z

    .line 121
    iget-object v0, p0, Llayout/SearchToolbarLayout$1;->this$0:Llayout/SearchToolbarLayout;

    invoke-static {v0}, Llayout/SearchToolbarLayout;->access$000(Llayout/SearchToolbarLayout;)Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Llayout/SearchToolbarLayout$1;->this$0:Llayout/SearchToolbarLayout;

    invoke-static {v0}, Llayout/SearchToolbarLayout;->access$000(Llayout/SearchToolbarLayout;)Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/processors/PublishProcessor;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
