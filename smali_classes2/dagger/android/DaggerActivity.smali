.class public abstract Ldagger/android/DaggerActivity;
.super Landroid/app/Activity;
.source "DaggerActivity.java"

# interfaces
.implements Ldagger/android/HasFragmentInjector;


# instance fields
.field fragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public fragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Ldagger/android/DaggerActivity;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
