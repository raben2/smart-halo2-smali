.class public abstract Ldagger/android/support/DaggerApplication;
.super Ldagger/android/DaggerApplication;
.source "DaggerApplication.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field supportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ldagger/android/DaggerApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract applicationInjector()Ldagger/android/AndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "+",
            "Ldagger/android/support/DaggerApplication;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 30
    invoke-virtual {p0}, Ldagger/android/support/DaggerApplication;->supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Ldagger/android/support/DaggerApplication;->supportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
