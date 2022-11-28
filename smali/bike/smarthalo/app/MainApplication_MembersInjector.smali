.class public final Lbike/smarthalo/app/MainApplication_MembersInjector;
.super Ljava/lang/Object;
.source "MainApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/MainApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/MainApplication_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/MainApplication;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lbike/smarthalo/app/MainApplication_MembersInjector;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/MainApplication_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectKeyManager(Lbike/smarthalo/app/MainApplication;Lbike/smarthalo/app/managers/KeyManager;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lbike/smarthalo/app/MainApplication;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/MainApplication;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lbike/smarthalo/app/MainApplication_MembersInjector;->keyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/MainApplication_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/MainApplication;Lbike/smarthalo/app/managers/KeyManager;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lbike/smarthalo/app/MainApplication;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/MainApplication_MembersInjector;->injectMembers(Lbike/smarthalo/app/MainApplication;)V

    return-void
.end method
