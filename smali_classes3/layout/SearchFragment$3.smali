.class Llayout/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 138
    iput-object p1, p0, Llayout/SearchFragment$3;->this$0:Llayout/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHLocation;

    .line 142
    iget-object p2, p0, Llayout/SearchFragment$3;->this$0:Llayout/SearchFragment;

    invoke-virtual {p2}, Llayout/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p3

    const/4 p4, 0x7

    if-eq p3, p4, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p2, p0, Llayout/SearchFragment$3;->this$0:Llayout/SearchFragment;

    invoke-static {p2, p1}, Llayout/SearchFragment;->access$300(Llayout/SearchFragment;Lbike/smarthalo/app/models/SHLocation;)V

    .line 149
    iget-object p2, p0, Llayout/SearchFragment$3;->this$0:Llayout/SearchFragment;

    invoke-static {p2}, Llayout/SearchFragment;->access$200(Llayout/SearchFragment;)Llayout/ViewContracts/SearchConsumerContract;

    move-result-object p2

    const p3, 0x7f1102b3

    invoke-interface {p2, p3}, Llayout/ViewContracts/SearchConsumerContract;->showMapLoadingDialog(I)V

    .line 150
    iget-object p2, p0, Llayout/SearchFragment$3;->this$0:Llayout/SearchFragment;

    invoke-static {p2}, Llayout/SearchFragment;->access$400(Llayout/SearchFragment;)Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    move-result-object p2

    invoke-interface {p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->onSearchResultClicked(Lbike/smarthalo/app/models/SHLocation;)V

    .line 151
    iget-object p2, p0, Llayout/SearchFragment$3;->this$0:Llayout/SearchFragment;

    invoke-static {p2}, Llayout/SearchFragment;->access$100(Llayout/SearchFragment;)Llayout/SearchToolbarLayout;

    move-result-object p2

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Llayout/SearchToolbarLayout;->setSearchViewTextNoEvent(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
