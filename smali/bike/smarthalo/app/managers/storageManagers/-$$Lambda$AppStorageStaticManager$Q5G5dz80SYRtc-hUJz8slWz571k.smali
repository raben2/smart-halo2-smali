.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Q5G5dz80SYRtc-hUJz8slWz571k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/SafeRealmHelper$SafeRealmContract;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Q5G5dz80SYRtc-hUJz8slWz571k;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onRealmReady(Lio/realm/Realm;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageStaticManager$Q5G5dz80SYRtc-hUJz8slWz571k;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->lambda$deleteLocation$5(Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method
