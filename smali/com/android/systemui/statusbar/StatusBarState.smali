.class public Lcom/android/systemui/statusbar/StatusBarState;
.super Ljava/lang/Object;
.source "StatusBarState.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toShortString(I)Ljava/lang/String;
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 47
    packed-switch p0, :pswitch_data_28

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bad_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_18
    const-string/jumbo v0, "SHD"

    return-object v0

    .line 51
    :pswitch_1c
    const-string/jumbo v0, "SHD_LCK"

    return-object v0

    .line 53
    :pswitch_20
    const-string/jumbo v0, "KGRD"

    return-object v0

    .line 55
    :pswitch_24
    const-string/jumbo v0, "FS_USRSW"

    return-object v0

    .line 47
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_18
        :pswitch_20
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method
