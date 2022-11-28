.class Lbike/smarthalo/sdk/commands/light/LightSettingPayload$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "LightSettingPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/commands/light/LightSettingPayload;-><init>(Lbike/smarthalo/sdk/commands/light/LightMode;IZZLbike/smarthalo/sdk/commands/SuccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload$1;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 2

    .line 24
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/light/LightSettingPayload$1;->val$callback:Lbike/smarthalo/sdk/commands/SuccessCallback;

    const/4 v1, 0x0

    aget-byte p1, p1, v1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/SuccessCallback;->onResult(Z)V

    return-void
.end method
