.class public final synthetic Llayout/-$$Lambda$SettingsSwitch$--H3ycdNdSuWn9_S8Tf3DVOo36Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Llayout/SettingsSwitch;


# direct methods
.method public synthetic constructor <init>(Llayout/SettingsSwitch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$SettingsSwitch$--H3ycdNdSuWn9_S8Tf3DVOo36Y;->f$0:Llayout/SettingsSwitch;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Llayout/-$$Lambda$SettingsSwitch$--H3ycdNdSuWn9_S8Tf3DVOo36Y;->f$0:Llayout/SettingsSwitch;

    invoke-static {v0, p1, p2}, Llayout/SettingsSwitch;->lambda$initListeners$0(Llayout/SettingsSwitch;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
