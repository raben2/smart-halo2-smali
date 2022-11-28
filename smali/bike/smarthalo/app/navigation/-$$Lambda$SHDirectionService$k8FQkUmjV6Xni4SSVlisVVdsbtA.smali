.class public final synthetic Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->lambda$loadGPXPath$2(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/net/Uri;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v0

    return-object v0
.end method
