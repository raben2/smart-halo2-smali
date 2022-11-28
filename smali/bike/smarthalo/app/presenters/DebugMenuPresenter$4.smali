.class Lbike/smarthalo/app/presenters/DebugMenuPresenter$4;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "DebugMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/DebugMenuPresenter;->sendClockCommand(IIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;)V
    .locals 0

    .line 1985
    iput-object p1, p0, Lbike/smarthalo/app/presenters/DebugMenuPresenter$4;->this$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 0

    .line 1988
    invoke-super {p0, p1}, Lbike/smarthalo/sdk/CmdCallback;->onDone([B)V

    return-void
.end method
