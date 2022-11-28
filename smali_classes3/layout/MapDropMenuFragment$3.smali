.class Llayout/MapDropMenuFragment$3;
.super Ljava/lang/Object;
.source "MapDropMenuFragment.java"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/MapDropMenuFragment;->onSelectCompassNav()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MapDropMenuFragment;


# direct methods
.method constructor <init>(Llayout/MapDropMenuFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Llayout/MapDropMenuFragment$3;->this$0:Llayout/MapDropMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 123
    iget-object v0, p0, Llayout/MapDropMenuFragment$3;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$200(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->setNeverRemindMeCompassMode()V

    return-void
.end method
