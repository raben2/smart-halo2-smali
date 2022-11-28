.class public final synthetic Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$KjbIMKauuZsIcrnaorWw2sp2tuM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/navigation/SHDirectionService;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$KjbIMKauuZsIcrnaorWw2sp2tuM;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$KjbIMKauuZsIcrnaorWw2sp2tuM;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->lambda$KjbIMKauuZsIcrnaorWw2sp2tuM(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/location/Location;)V

    return-void
.end method
