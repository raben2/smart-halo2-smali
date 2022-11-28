.class public final synthetic Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$YBh3em08YF7D5pv-annYo4rtKM8;
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

    iput-object p1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$YBh3em08YF7D5pv-annYo4rtKM8;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$YBh3em08YF7D5pv-annYo4rtKM8;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    check-cast p1, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->lambda$loadGPXPath$5(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method
