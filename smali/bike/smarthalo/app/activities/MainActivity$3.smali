.class Lbike/smarthalo/app/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/MainActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$3;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 732
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 748
    :pswitch_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$3;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const-string v1, "assistant"

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/MainActivity;->access$300(Lbike/smarthalo/app/activities/MainActivity;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 745
    :pswitch_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$3;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const-string v1, "fitness"

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/MainActivity;->access$300(Lbike/smarthalo/app/activities/MainActivity;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 742
    :pswitch_2
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$3;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const-string v1, "alarm"

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/MainActivity;->access$300(Lbike/smarthalo/app/activities/MainActivity;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 739
    :pswitch_3
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$3;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const-string v1, "light"

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/MainActivity;->access$300(Lbike/smarthalo/app/activities/MainActivity;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    .line 736
    :pswitch_4
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$3;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const-string v1, "map"

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/MainActivity;->access$300(Lbike/smarthalo/app/activities/MainActivity;Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 757
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f080081

    .line 772
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0800ee

    .line 769
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080062

    .line 766
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0801c7

    .line 763
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0801d1

    .line 760
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
