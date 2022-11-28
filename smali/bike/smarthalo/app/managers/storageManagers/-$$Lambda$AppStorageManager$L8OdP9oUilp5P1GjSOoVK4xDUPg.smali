.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Lio/realm/Realm;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$AppStorageManager$L8OdP9oUilp5P1GjSOoVK4xDUPg;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/storageManagers/AppStorageManager;->lambda$setItemAsync$1(Ljava/lang/String;Ljava/lang/String;Lio/realm/Realm;)V

    return-void
.end method
