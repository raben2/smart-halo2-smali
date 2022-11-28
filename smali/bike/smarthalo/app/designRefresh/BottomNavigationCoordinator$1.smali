.class public final Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1;
.super Ljava/lang/Object;
.source "BottomNavigationCoordinator.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;-><init>(Lcom/google/android/material/tabs/TabLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "bike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1",
        "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;",
        "onTabReselected",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "onTabSelected",
        "onTabUnselected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1;->this$0:Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1;->this$0:Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->access$setTab(Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 29
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator$1;->this$0:Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;->access$setTab(Lbike/smarthalo/app/designRefresh/BottomNavigationCoordinator;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
