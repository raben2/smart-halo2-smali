.class public Lbike/smarthalo/sdk/commands/carousel/EmptyCommandPayload;
.super Ljava/lang/Object;
.source "EmptyCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [B

    return-object v0
.end method
