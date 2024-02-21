blackGrid = zeros(9, 9);
row = 1;
col = 1;


while true
    % ホワイトマスを表示
    blackGrid(row, col) = 1;

     % 画面をクリアして新しいマスを表示
    clc;
    imagesc(blackGrid);
    colormap(gray); % カラーマップをgrayに設定
    axis equal;
    axis image;

    % 0.1秒待機
    pause(0.1);

    % ホワイトマスを黒いマスに戻す
    blackGrid(row, col) = 0;

    % 次の位置へ移動
    col = col + 1;
    if col > 9
        col = 1;
        row = row + 1;
        if row > 9
            row = 1;
            %waitforbuttonpress;
        end
    end


end

