.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$NM_mZGcEs9Kozf0XUrj61dkpi8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$NM_mZGcEs9Kozf0XUrj61dkpi8s;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$SettingsStorageManager$NM_mZGcEs9Kozf0XUrj61dkpi8s;->f$0:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageManager;->lambda$initSettings$0(Ljava/util/HashMap;Lio/realm/Realm;)V

    return-void
.end method
